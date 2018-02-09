// 1026mapa
// pixels and manipulation
// ashley james brown


import processing.video.*;

Capture vid;

void setup(){
  size (640,360);
  background(0);
  
 
  String[] cameras = Capture.list();
  printArray(cameras);
  
  //    new camera this, width, height, framerate
  vid = new Capture(this,640,360,30);
  vid.start();
}


void draw(){
  
  // displays raw video feed
  image(vid,0,0);
  
}


void captureEvent(Capture vid){
 vid.read(); 
}