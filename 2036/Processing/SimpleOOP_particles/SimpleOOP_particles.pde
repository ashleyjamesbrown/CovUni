// basic basic particle systme for oop understanding
// 2036mapa
// ashley james brown


ArrayList<Particle> particles = new ArrayList<Particle>();

void setup() {
  size(600, 600);
  
  
}



void draw() {
  background(200);
  
  //special for loop for objects
  for (Particle p : particles) {
    p.update();
    p.display(); //call the method on each aprticle
  }
  
}


void mousePressed() {
  particles.add(new Particle(mouseX, mouseY));
}