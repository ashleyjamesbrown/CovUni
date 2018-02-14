// 2036MAPA
// ashley james brown
// take an image and use its pixel colour data and apply to particles

ArrayList<Particle> particles = new ArrayList<Particle>();

PImage cat;

void setup() {
  size(600, 400);
  background(0);
  cat = loadImage("cat.jpg");
}


void draw() {

  background(0);

  for (Particle p : particles) {
    p.update();
    p.display();
  }
}


void mousePressed() {
  for (int i = 0; i < 250; i ++) {
    particles.add(new Particle(mouseX, mouseY));
  }
}


void keyPressed(){
 saveFrame("pixelparticle-###.jpg"); 
}