// 2036mapa
// basic 3d shapes
// now including basic export
// ashley james brown


import peasy.*;
import peasy.org.apache.commons.math.*;
import peasy.org.apache.commons.math.geometry.*;

PeasyCam cam; // camera for 3D_viewing of the sketch

import nervoussystem.obj.*;
boolean record;


void setup() {
  size(600, 600, P3D);
  background(0);
  
  cam = new PeasyCam(this, 500); // new camera 
  translate(width/2,height/2);   // anchor to middle of screen 
}


void draw(){
  background(0); 
  //start recording whatever is below
  if (record) {
    beginRecord("nervoussystem.obj.OBJExport", "myShape.obj");
  }
  
  //draw shapes
  fill(255,200,20); 
  //sphere(50); // draws a ball
  //box (50); // draws a cube
  drawShape(); //draw our own shape specified below
  
  //end record
  if (record) {
    endRecord();
    record = false;
  }  
}


void drawShape(){
  
  // QUADS
  // TRAINGLE_STRIP
  // TRIANGLE_FAN
  
  beginShape(TRIANGLE_FAN);
   vertex(100,10,20);  //x,y,z
   vertex(20,10,30);
   vertex(30,10,50);
   vertex(100,90,10);
   vertex(30,10,50);
   vertex(400,10,0);
   vertex(30,100,50);
   vertex(30,300,150);
   vertex(300,30,500);
  endShape(CLOSE); 
  
}



void keyPressed(){
  record = true;
}