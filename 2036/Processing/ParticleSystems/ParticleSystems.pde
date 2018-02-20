// 2036mapa
// 2d particle system
// drawing with plain colours
// ashley james brown


ArrayList<Particle> particles = new ArrayList<Particle>();

void setup() {
  size(600, 600);
  background(0);
}


void draw() {

 // background(0);

  for (Particle p : particles) {
    p.update();
    p.display();
  }
}

void keyPressed() {
  saveFrame("image-###.jpg");
}


void mousePressed() {

  for (int i=0; i <50; i++) {
    particles.add(new Particle(mouseX, mouseY));
  }
}