// student name
// date
// sketch title
// brief description

float x = 0;
float y = 0;

float r = 0;
float g = 0;
float b = 0;

void setup() {
  size(800, 600);
  background(17, 137, 17);
}


void draw() {

  x = random(0,width);
  y = random(0,height);
  
  r = random(0,255);
  g = random(0,255);
  b = random(0,255);
  
  if (mousePressed) {
    fill(r, g, b, 90);
    ellipse(x, y, mouseX, mouseY);
    noStroke();
  }
}


void keyPressed() {
  saveFrame("filename-###.jpg");
  background(17, 137, 17);
}