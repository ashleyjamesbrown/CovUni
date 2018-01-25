// student name
// date
// sketch title
// brief description

float x=0;
float y=0;

float r = 0;
float g = 0;
float b = 0;

void setup() {
  size(800, 600);
  background(0, 27, 217);
}


void draw() {

  x = random(0,width);
  y = random(0,width);
  
  r = random(0,255);
  g = random(0,255);
  b = random(0,255);
  
  if (mousePressed) {
    fill(r, g, b,85);
    ellipse(x, y, r, r);
    noStroke();
  }
}


void keyPressed() {
  saveFrame("filename-###.jpg");
  background(0, 27, 217);
}