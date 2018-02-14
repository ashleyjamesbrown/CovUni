 
 class Particle {
  float x;
  float y;
  float lifespan;
  
  
  PVector loc;  //location
  PVector vel;  //velocity
  PVector acc;  //acceleartion
  
  
    Particle(float px, float py) {
    x = px;
    y = py;
    
    acc = new PVector(0, 0);
    vel = new PVector(random(-5,5), random(-12, -5));
    loc =  new PVector(x, y);
   
    lifespan= 255;
  }
  
  
  void applyForce(PVector force) {
    acc.add(force);
  }
  
  
  // Method to update location
  void update() {
    
    vel.add(acc);
    
    loc.add(vel);
    
    acc.mult(0);
    
    lifespan-=5;
  }
  
   // Method to display
  void display() {
    stroke(255, 255, 255, lifespan);
    fill(255, 255, 255, lifespan);
  
    //point(loc.x, loc.y);
    ellipse(loc.x, loc.y, 12, 12);
  }
  
  
  
 }