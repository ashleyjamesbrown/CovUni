void setup(){
  size(800,800);
  background(0);
  rectMode(CENTER);
}


void draw(){
  
  pushMatrix();
  translate(width/2,height/2);
  rotate(frameCount*0.01);
  rect(0,0,100,100);
  
  popMatrix();
}