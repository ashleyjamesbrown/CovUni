 
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
    vel = new PVector(random(-1,1), random(-1,1));
    loc =  new PVector(x, y);
   
    lifespan= 255;
  }
  
  
  void applyForce(PVector force) {
    acc.add(force);
  }
  
  
  // Method to update location
  void update() {
    
    vel.add(acc);
    
    PVector r = PVector.random2D();
    r.mult(0.15); 
    vel.add(r);
    
    loc.add(vel);
    
    acc.mult(0);
    
    
      if (loc.x <= 0){
     loc.x = width;
    }
    if (loc.x >= width){
     loc.x = 0;
    }
    if (loc.y <= 0){
     loc.y = height;
    }
    if (loc.y >= height){
     loc.y = 0;
    }
    
    
    lifespan-=2;
  }
  
   // Method to display
  void display() {
    stroke(255, 255, 255, lifespan);
    fill(255, 255, 255, lifespan);
  
    //point(loc.x, loc.y);
    ellipse(loc.x, loc.y, 12, 12);
  }
  
  
  
 }