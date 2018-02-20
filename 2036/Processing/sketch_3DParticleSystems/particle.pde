 
 class Particle {
  float x;
  float y;
  float z;
  
  float lifespan;
    
  PVector loc;  //location
  PVector vel;  //velocity
  PVector acc;  //acceleartion
  
  
   Particle(float px, float py, float pz) {
    x = px;
    y = py;
    z = pz;
    
    acc = new PVector(0, 0, 0);
    vel = new PVector(random(-5,5), random(-5,5), random(-5,5));
    loc =  new PVector(x, y, z);
   
    lifespan= 255;
  }
  
  
  void applyForce(PVector force) {
    acc.add(force);
  }
  
  
  // Method to update location
  void update() {
    
    vel.add(acc);
    
    PVector r = PVector.random3D();
    r.mult(0.35); 
    vel.add(r);
    
    loc.add(vel);
    
    acc.mult(0);
    
    
    
    lifespan-=2;
  }
  
   // Method to display
  void display() {
    stroke(255, 255, 255, 255);
    fill(255, 255, 255, 255);
    // point(loc.x, loc.y, loc.z);
    //ellipse(loc.x, loc.y, 12, 12);
    
    pushMatrix();
    translate(loc.x,loc.y,loc.z);
    sphere(5);
    popMatrix();
  }
  
  
  
 }