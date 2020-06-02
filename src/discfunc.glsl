void disc(float index,out vec3 pos,out vec3 norm,out float rad,float time)
{
   time-=clamp((time-73.5)*18,0,8.5);

   pos=vec3(-cos(index),-.8+index/25,sin(index*2))*1.5;
   pos.zx*=max(0,1-index/20);
   norm=vec3(.1,1,0);

   rad=(.45+sin(index*7)*.15)*clamp(time+index-24,0,1); 

   if(time>65)
   {
      time-=65;
      rad=.34+sin(index*97)*.3;
      float a=smoothstep(0,1,1.-exp(-time/8.))*2;
      pos=normalize(vec3(-cos(index*5),-1+index/33,sin(index)))*(.5+a/5);
      norm=pos-vec3(0,-.1+a/8,0);
   }
   else if(time>46)
   {
      time-=46;
      pos*=vec3(.7,1,.01);
      pos.y+=.4;
      norm=vec3(cos(index*5)*.1,1,.1);
   }
   norm=normalize(norm);
}
