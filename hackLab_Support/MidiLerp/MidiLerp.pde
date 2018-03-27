
// 2036mapa
// ashley james brown
// midi notes
// lerp movement
// 

import themidibus.*;

MidiBus myBus; // The MidiBus
float bg=0;
int[] keys = new int[85];


float x;
float y;

float pX= -10; //pitch x
float pY= 500; //pitch y

// this is how fast the main bar takes to mvoe to its new positions
float speed = 0.025; // between 0.00 and 1.00

void setup() {
  size(1000, 600);
  noStroke();  
  
  MidiBus.list();
  myBus = new MidiBus(this, 0, "MPKmini2"); //change this for your device.
  
  int n=1;
  for (int i =60; i < 85; i++) {
    keys[i] = 40*n;
    n++;
  }
  rectMode(CENTER);
}

void draw() { 
  
  //clever fade command
  fill(0, 30);
  rect(0, 0, width*2, height*2);

  //draw a large bar and move it based on the pitch
  x = lerp(x, pX, speed); // this animates the bar
  y = lerp(y, pY, speed); // this animates the bar
  
  fill(255);
  stroke(255);
  rect(x, y, 10, 1000);
  
}

void noteOn(int channel, int pitch, int velocity) {
  // Receive a noteOn
  println();
  //println("Note On:");
  //println("--------");
  //println("Channel:"+channel);
  //println("Pitch:"+pitch);
  //println("Velocity:"+velocity);
  fill(255);
  
  //move the main bar about due to the pitch
  pX = keys[pitch]-40;
  pY = height/2;
  
  
  if (pitch <48) {
  // must be the square buttons and not keys
  } else {
    //must be the keys
    fill(255);
    rect(keys[pitch]-40, height, 40, -velocity*2);
  }
}

void noteOff(int channel, int pitch, int velocity) {
  // Receive a noteOff=
  println();
  println("Note Off:");
  println("--------");
  println("Channel:"+channel);
  println("Pitch:"+pitch);
  println("Velocity:"+velocity);
}

void controllerChange(int channel, int number, int value) {
  // Receive a controllerChange
  println();
  println("Controller Change:");
  println("--------");
  println("Channel:"+channel);
  println("Number:"+number);
  println("Value:"+value);
  bg = value*2;
  
}