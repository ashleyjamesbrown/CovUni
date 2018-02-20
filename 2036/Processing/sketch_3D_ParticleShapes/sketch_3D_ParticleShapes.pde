import peasy.*;
import peasy.org.apache.commons.math.*;
import peasy.org.apache.commons.math.geometry.*;

PeasyCam cam;

ArrayList<Particle> particles = new ArrayList<Particle>();

void setup() {
  size(600, 600, P3D);
  background(0);
  translate(width/2, height/2);
  cam = new PeasyCam(this, 500);
}


void draw() {

  background(0);
  
  beginShape(TRIANGLES);
  for (Particle p : particles) {
    p.update();
    //p.display();
    noStroke();
    fill(255, p.loc.y, p.loc.z, 90);
    vertex(p.loc.x, p.loc.y, p.loc.z);
  }
  endShape();
}


void keyPressed() {
 // for (int i=0; i < 15; i ++) {
    particles.add(new Particle(0, 0, 0));
 // }
}