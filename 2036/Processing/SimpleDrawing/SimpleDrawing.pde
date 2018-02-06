// simple drawing Year 2


float r = 0;
float g = 0;
float b = 0;


void setup(){
  size(1200,800);
  background(5,195,245);
}


void draw(){
  //background(5,195,245);
  
  r = random(0,255);
  g = random(0,255);
  b = random(0,255);
  
 // noStroke();
  fill(r,g,b,140);
  ellipse(mouseX,mouseY,100,100);
  
}

void keyPressed(){
  saveFrame("simpledrawing-###.jpg");
}