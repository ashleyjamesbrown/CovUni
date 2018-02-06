// simple drawing Year 2


float r = 0;
float g = 0;
float b = 0;


float x = 0;
float y = 0;
float spacing = 50;

void setup() {
  size(800, 800);
  background(255);
}


void draw() {

  stroke(0);
  strokeWeight(2);

  //rule one - probability 3 choices
  if (random(1) > 0.8 && random(1) < 0.9) {
    noFill();
    //rect (x, y, spacing, spacing);
  } 
  else if (random(1) >0.0 && random(1)  < 0.6){
  // line(x,y, x+spacing,y+spacing);
  // line(x+spacing,y,x,y+spacing);
  
   //noStroke();
   // fill(0);
   
   if (random(1) < 0.5){
    noFill();
    stroke(0);
   } else {
    fill(0);
    noStroke();
   }
   
    pushMatrix();
    translate(x,y);
    rotate(radians(int(random(3))*90));
    triangle (0, 0, 0+ spacing, 0, 0, 0+ spacing);
    popMatrix();
  }
   else {
    // no outline, solid fill, triangle
    noStroke();
    fill(0);
    
    
    ellipse(x+spacing/2, y + spacing/2, spacing*.80,spacing*.80);
  }

  //rule two - increase spacing
  x+=spacing;

  //rule three - move down a row
  if (x > width) {
    y += spacing;
    x = 0;
  }
}

void keyPressed() {
  saveFrame("simple10print-###.jpg");
}