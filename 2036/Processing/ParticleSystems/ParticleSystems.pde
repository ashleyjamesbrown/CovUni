

ArrayList<Particle> particles = new ArrayList<Particle>();

void setup(){
  size(600,600);
  background(0);
  
}


void draw(){
  
   background(0);
  
  for (Particle p : particles) {
    p.update();
    p.display();
  }
  
}




void mousePressed() {
  particles.add(new Particle(mouseX, mouseY));
   particles.add(new Particle(mouseX, mouseY));
    particles.add(new Particle(mouseX, mouseY));
     particles.add(new Particle(mouseX, mouseY));
}