// 2036mapa
// ashley james brown
// open cv face tracking and replace with png image


// if camera crashes or wont start just check its not locked by a mac application
// open terminal and run command below
// sudo killall VDCAssistant

//

PImage img; 

import gab.opencv.*;

import processing.video.*;

import java.awt.*;

Capture video;
OpenCV opencv;

void setup() {
  size(1280, 960);
  video = new Capture(this, 640, 480);
  opencv = new OpenCV(this, 640, 480);
  
  opencv.loadCascade(OpenCV.CASCADE_FRONTALFACE);  

  video.start();
  img = loadImage("cat.png");
  
}

void draw() {
  scale(2);
  opencv.loadImage(video);

  image(video, 0, 0 );

  noFill();
  stroke(0, 255, 0);
  strokeWeight(3);
  
  Rectangle[] faces = opencv.detect();
  
  println(faces.length);

  for (int i = 0; i < faces.length; i++) {
    println(faces[i].x + "," + faces[i].y);
       //rect(faces[i].x, faces[i].y, faces[i].width, faces[i].height);
    image(img,faces[i].x, faces[i].y-50, faces[i].width, faces[i].height);
  }
}

void captureEvent(Capture c) {
  c.read();
}