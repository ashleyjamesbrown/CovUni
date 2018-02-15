ArrayList<Particle> particles = new ArrayList<Particle>();


import processing.sound.*;

AudioIn input;
Amplitude rms;

int scale=1;


void setup() {
  size(400, 400);
  input = new AudioIn(this, 0);
  input.start();
  rms = new Amplitude(this);
  rms.input(input);
}


void draw() {
  background(0);

 //special for loop for objects
  for (Particle p : particles) {
    p.update();
    p.display(); //call the method on each aprticle
  }
  
  
  scale=int(map(rms.analyze(), 0, 0.5, 1, 350));
  noStroke();
  println(scale);
  fill(255, 0, 150);
 // ellipse(width/2, height/2, 1*scale, 1*scale);
  
  if (scale > 60){
     particles.add(new Particle(width/2, height/2));
  }
  
  
}