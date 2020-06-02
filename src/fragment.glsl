uniform sampler3D B;

vec2 trace(vec3 ro,vec3 rd,float cone,out vec3 mn,float time)
{
   float l=1.;
   float mt=1e4,t,w,d;
   float rad;
   vec3 pos,norm;
   for(float i=0;i<20;++i)
   {
      disc(i,pos,norm,rad,time);
      t=dot(pos-ro,norm)/dot(rd,norm);
      if(t>0)
      {
         w=t*cone;
         l*=smoothstep(-w,w,d=length(ro+rd*t-pos)-rad);
         if(t<mt&&d<0)
         {
            mt=t;
            mn=norm*-sign(dot(norm,rd));
         }
      }
   }
   return vec2(l,mt);
}

mat2 rotmat(float an)
{
   return mat2(cos(an),sin(an),sin(an),-cos(an));
}

void main()
{
   // particle falloff
   gl_FragColor.r=pow(1-min(length(vec3(gl_PointCoord.st,gl_TexCoord[0].y)-.5)*2,1),2) * gl_TexCoord[0].x;

	if(gl_TexCoord[0].z==3)
	{
      float time=gl_TexCoord[0].x/1000,otime=time;
      float ax=.4,ay=(time-23)/30,az=-.1;
      float t;
      float refrx=1;
      float hit=0;
		float refc=0;

      vec3 ro=vec3(0.,-.14,2.1),rd=normalize(vec3(gl_FragCoord.xy/360-vec2(1.778,1),-1.6)),mn,mn_dummy,ld=vec3(1,1,2)/2.45;
       
      if(time>65)
      {
         time-=65;
         ro=vec3(0.,-.14,1.82);
         ld=vec3(2,4,1)/4.58;
         az=.5;
         ax=.6;
         ay=time/75.;
      }
		 else if(time>46)
		 {
			 time-=46;
         ro=vec3(0.,.1,2.);
          ld=vec3(1,4,2)/4.58;
          ay=ax=az=0;
		 }
				 

      ro.yx*=rotmat(az);
      rd.yx*=rotmat(az);
      ro.yz*=rotmat(ax);
      rd.yz*=rotmat(ax);
      ro.xz*=rotmat(ay);
      rd.xz*=rotmat(ay);

      gl_FragColor=vec4(.5+.5*rd.y)/2;

      vec3 slabs0 = -(ro - 1) / rd;
      vec3 slabs1 = -(ro + 1) / rd;

      vec3 mins = min(slabs0, slabs1);
      vec3 maxs = max(slabs0, slabs1);

      vec3 e=vec3(0,1,0)/32;

      vec2 cube=vec2(max(0,max(max(mins.x, mins.y), mins.z)), min(min(maxs.x, maxs.y), maxs.z));
      vec2 q=abs(gl_FragCoord.xy/vec2(640,360)-1);

      ax=trace(ro,rd,0,mn,otime).y;
      
      if(cube.x<cube.y)
      {
   // trace through the volume
         for(float i=0;i<1&&hit<.5;i+=1./600)
         {
            t=mix(cube.x,cube.y,i);
            hit=texture(B,(ro+1+rd*t)/2).r;
         }

         // check if there is an intersection with the volume
         if(hit>.5 && t < ax)
         { 
				 //discard;
						// calculate intersection point in volumespace
            slabs0=(ro+1+rd*t)/2;

						// get the volume surface normal via forward differencing (6 samples are necessary get a good quality)
            slabs0=reflect(rd,slabs1=normalize(vec3( texture(B,slabs0-e.yxx).r - texture(B,slabs0+e.yxx).r,
                                   texture(B,slabs0-e).r - texture(B,slabs0+e).r,
                                   texture(B,slabs0-e.xxy).r - texture(B,slabs0+e.xxy).r)));
            
						// calculate fresnel terms
            hit=mix(.1,.9, pow(min(dot(slabs1,rd)+1,1),2));
            refrx=1-hit;
            
						// make a new segment in the ray path by refraction
            ro+=rd*t;
            ax=trace(ro, rd=refract(rd,slabs1,.9), 0, mn,otime).y;
            
						// calculate some reflected light
            refc=(.5+slabs0.y/2+step(-slabs0.y,.001))/2*hit;
         }
      }
      
      if(ax<1e3)
      {
				 // calculate lighting at the ray-disc intersection point
         hit=.004+trace(ro+=rd*(ax-1e-5),ld,.3,mn_dummy,otime).x*max(0,dot(mn,ld));
				 hit+=.1*trace(ro,-rd,.6,mn_dummy,otime).x*max(0,dot(mn,-rd));

				 // combine lighting terms: direct-traced light, volume surface reflection, and an AO-like term computed by sampling the volume
			   gl_FragColor=refrx*vec4(hit + mix(.02,1.,trace(ro,e*32,2.,mn_dummy,otime).x)*max(0,mn.y))/4 * (1-texture(B,(ro+1)/2).r/2*step(length(pow(ro*ro,1/e.yyy)),.1));
			}
      
			// colour curve and fade
      //gl_FragColor=pow(gl_FragColor+refc,vec4(1,1.1,1.5,1))*min(1,time);
      //gl_FragColor=pow(gl_FragColor+refc,vec4(1,1.4,1.3,1))*min(1,time)*(1.-smoothstep(0,5,otime-83));
      gl_FragColor=pow(gl_FragColor+refc,vec4(1,1.4,1.3,1))*min(1-smoothstep(0,5,otime-83),time);
			
			// tonemapping, vignet, and gamma
      gl_FragColor=sqrt((gl_FragColor/=gl_FragColor*.56+.45)*(1.43-dot(q*q,q)/2));
	}  
}
