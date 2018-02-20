// 2036mapa
// 2d particle system
// drawing with plain colours
// ashley james brown


ArrayList<Particle> particles = new ArrayList<Particle>();

void setup() {
  size(600, 600, P3D);
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
  switch(key){ 
    case ' ' :
    particles.add(new Particle(0,0));
    break;
    
    case 'r' :
    break;
    
    case 's':
    saveFrame("screen-###.jpg");
    break;
  }
  
}


void mousePressed() {

  for (int i=0; i <50; i++) {
    particles.add(new Particle(mouseX, mouseY));
  }
}