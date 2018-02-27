// 1026 MAPA
// ashley james brown
// partcile physics system
// how to create oop

//array list for storing multiple instances - this is a dynamic list
//ArrayList<Particle> particles = new ArrayList<Particle>();

Particle player1;


void setup() {
  size(600, 600);
  background(0);

  player1 = new Particle(width/2, height/2);
}


void draw() {

  background(0);
  
  player1.update();
  player1.applyForce(new PVector(0,0.05));
  player1.display();

  //special for loop for objects
  //for (Particle p : particles) {
  //  p.update(); // run the update method
  //  p.display(); // run the display method
  //}
}



void keyPressed() {

  switch(keyCode) {

    case (UP) :
    player1.applyForce( new PVector(0,-3));
    break;
    
  //  case (DOWN) :
  //  player1.applyForce( new PVector(0, 1));
  //  break;
    
  //  case (LEFT) :
  //  player1.applyForce( new PVector(-1,0));
  //  break;
    
  //  case (RIGHT) :
  //  player1.applyForce( new PVector(1,0));
  //  break;
  }
  
  
}


void mousePressed() {

  //loop so 10 are created on each click

  //for (int i=0; i < 10; i ++) {
  //  particles.add(new Particle(mouseX, mouseY));
  //}
}