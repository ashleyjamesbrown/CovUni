PImage img;

ArrayList <Particle> particles;

void setup() {
  size(800, 600);
  background(0);
  particles = new ArrayList<Particle>();
  
  img = loadImage("cat.jpg");
  
   
  background(0);
  
 // image(img,0,0);
}


void draw() {
 

  for (Particle p : particles) {  
    p.update(); //run the update method
    p.display(); //display the particle
  }
  
  
}


void keyPressed() {
  saveFrame("image-###.jpg");
}


void mousePressed() {

  for (int i=0; i <50; i++){
   Particle newP = new Particle(mouseX, mouseY);
   particles.add(newP);
  }
  
}