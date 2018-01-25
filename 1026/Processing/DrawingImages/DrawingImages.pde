
// student name
// date
// sketch title
// how to import and draw images to the screen

PImage myImg;

void setup() {
  size(800, 600);
  background(17, 137, 17);
  myImg = loadImage("Pops_character.png");
  frameRate(60);
  
  imageMode(CENTER); //put the image in the centre of the mouse
  
}


void draw() {
 
 
  filter(ERODE);
  
  tint(mouseX,0,mouseY);
  image(myImg,mouseX,mouseY,myImg.width/2,mouseY);
 
}


void keyPressed() {
  saveFrame("filename-###.jpg");
  background(17, 137, 17);
}