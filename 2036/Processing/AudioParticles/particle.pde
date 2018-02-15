class Particle {
  float x;
  float y;
  float lifespan;

  //class constructor
  Particle(float x, float y) {
    this.x = x;
    this.y = y;
    lifespan=255;
  }

  //class or object methods

  void update() {
    //just random changes
    this.x += random(-10, 10);
    this.y += random(-10, 10);
    lifespan -=5;
  }

  void display() {
    stroke(0);
    fill(255, lifespan);
    ellipse(this.x, this.y, 24, 24);
  }
}