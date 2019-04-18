import processing.video.*;
Particle[] particles;
Capture video; 

void setup(){
   size(640,480);
   //Capture.list();
   video = new Capture(this,640,480,30);
   video.start(); 
   particles = new Particle[2000];
   for(int i = 0 ; i < particles.length; i++){
      particles[i] = new Particle();
   }
      background(0);
     
}
void captureEvent(Capture  video){
  video.read();
}
void draw(){
   for (int i =0; i < particles.length; i++){
      particles[i].display();
      particles[i].move();
      
    }

}