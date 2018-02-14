class Particle {
  float x;
  float y;

//class constructor
  Particle(float x, float y) {
    this.x = x;
    this.y = y;

  }
  
  //class or object methods

  void update() {
    //just random changes
    this.x += random(-10, 10);
    this.y += random(-10, 10);
    
  }

  void display() {
    stroke(0);
    fill(0, 150);
    ellipse(this.x, this.y, 24, 24);
  }
  
}