// 2036 MAPA
// ashley james brown
// particles with proper forces applied

//array list for storing multiple instances - this is a dynamic list
ArrayList<Particle> particles = new ArrayList<Particle>();



void setup() {
  size(600, 600);
  background(0);
}


void draw() {

  background(0);

  //special for loop for objects
  for (Particle p : particles) {
    p.update(); // run the update method
    p.display(); // run the display method
  }
}


void mousePressed() {
  
  //loop so 10 are created on each click
  
  for (int i=0; i < 10; i ++) {
    particles.add(new Particle(mouseX, mouseY));
  }
}