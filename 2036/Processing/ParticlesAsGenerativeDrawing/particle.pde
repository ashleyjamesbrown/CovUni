
class Particle {
  float x;
  float y;
  float lifespan;
  color c;

  PVector loc;  //location
  PVector vel;  //velocity
  PVector acc;  //acceleartion


  Particle(float px, float py) {
    x = px;
    y = py;

    acc = new PVector(0, 0);
    vel = new PVector(random(-2, 2), random(-2, 4));
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

    //lifespan-=5;
    
    
    //code to make the particles wrap aroudn the screen so they dont dissapear
    if (loc.x < 0){
     loc.x = width; 
    }
    
    if (loc.x > width){
     loc.x = 0; 
    }
    
    if (loc.y < 0){
     loc.y = height; 
    }
    
    if (loc.y > height){
     loc.y = 0; 
    }
    
    
    
  }

  // Method to display
  void display() {
    //  stroke(255, 255, 255, lifespan);
    //  fill(255, 255, 255, lifespan);
    
    //get the colour from the image underneath
    c = cat.get(int(loc.x), int(loc.y));
    fill(c);
    noStroke();
    //point(loc.x, loc.y);
    ellipse(loc.x, loc.y, 12, 12);
  }
}