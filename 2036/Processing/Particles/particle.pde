
class Particle {
  //class and therefore object specific variables
  float x;
  float y;
  float lifespan;


  PVector loc;  //location
  PVector vel;  //velocity
  PVector acc;  //acceleartion

//class constructor
  Particle(float px, float py) {
    x = px;
    y = py;

    acc = new PVector(0, 0);
    vel = new PVector(random(-5, 5), random(-12, -5));
    loc =  new PVector(x, y);

    lifespan= 255;
  }


//class methids we can call and use on the object

  void applyForce(PVector force) {
    acc.add(force);
  }


  // Method to update location
  void update() {

    vel.add(acc);

    loc.add(vel);

    acc.mult(0);

    lifespan-=5; //decrease lifespan and if added to teh alpha it means it will fade over time
  }

  // Method to display
  void display() {
    stroke(255, 255, 255, lifespan);
    fill(255, 255, 255, lifespan);
    
    ellipse(loc.x, loc.y, 12, 12);
  }
}