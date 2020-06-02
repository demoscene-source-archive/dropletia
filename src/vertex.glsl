void main()
{	
   float partidx=floor(gl_Vertex.x/7);
   float partslice=mod(gl_Vertex.x,7.);

   float time=gl_MultiTexCoord0.x/1000,otime=time;

   time-=clamp((time-73.5)*18,0,8.5);
   
	vec3 origin=vec3(-.7,.95,.1);
   vec3 initial_velocity=(1.+cos(partidx*6)/2)*vec3(cos(partidx*5)*.15,cos(partidx*7)*.15,sin(partidx*5)*.15)*mix(1.1,1.5,.5+cos(partidx*99.)/2)*2.4;
	vec3 acceleration=vec3(0,-1.2,0)*4*2*mix(.7,1.,.5+cos(partidx*79.)/2)*1.2;
   vec3 pos,norm;

   time-=25;
         
   if(time>40)
   {
      time-=40;
      origin*=0;
      acceleration*=.001;
   }
   else if(time>21)
    {
      time-=21;
      origin=vec3(cos(partidx*5)*.8,.9,cos(partidx*7)*.1);
      initial_velocity*=0;
    }	 

   float tt=max(0,time*.1-mod(partidx*.2+sin(partidx*7)*.3,3.)/3);
   float rad;

	 // go through the whole particle motion up to the current timepoint, one parabolic arc at a time
	 // gravity is kept constant, so acceleration is not changed
   for(float j=0;j<32;++j)
	 {
			float minq=tt;
			
			// candidate arc resulting from a collision
			vec3 new_origin,new_initial_velocity;
			
			for(float i=0;i<20;++i)
			{
				disc(i,pos,norm,rad,otime);

				// set up a quadratic equation representing the intersection of the current parabolic arc with the plane which this disc lies on
				float b = initial_velocity.y + dot(initial_velocity.xz, norm.xz) / norm.y;      
            float d = b*b-acceleration.y*dot(origin - pos, norm) / norm.y * 4;            
				float q = (-b - sqrt(d)) / acceleration.y / 2;
            
            if(d>0)
				{
					// the equation has a real root
					vec3 o = origin+initial_velocity*q+acceleration*q*q;

					if(q>0 && q<minq && length(o-pos)<rad)
					{
						// the intersection timepoint is valid, and the intersection point is contained by the disc. so, update the collision candidate
						new_origin=o;
						new_initial_velocity=reflect(initial_velocity+acceleration*q*2, norm)*.7;//(.7+sin(partidx)*.1);
						minq=q;
					}
				}
			}
			
			if(tt>minq)
			{
				// the current arc collided with a disc, so replace it with a new arc representing the deflected particle motion
				origin=new_origin;
				initial_velocity=new_initial_velocity;
				tt-=minq;
			}
		}

	// calculate the final particle position
   pos=origin+initial_velocity*tt+acceleration*tt*tt;
   rad=floor((pos.z+1)*32)+partslice-4;
   
	// pass some bounds-testing and z slice info to the fragment shader
	gl_TexCoord[0]=vec4(step(length(pow(abs(pos),vec3(32))),.1), (partslice-fract((pos.z+1)*32))/7, 0, 0);

	 // position the point to draw according to the z slice
   gl_Position.xy=(pos.xy+1)/8+vec2(mod(rad,8), floor(rad/8))/4-1;
}
