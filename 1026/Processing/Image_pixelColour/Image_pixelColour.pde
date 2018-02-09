// 1026mapa
// pixels and manipulation
// ashley james brown



PImage img; //global varaable to hold the image data

void setup() {
  size(600, 400); //its a good idea to set this the same as the image loading in unless you are putting lots in.
  background(219, 35, 210);
  
  img = loadImage("cat.jpg"); //ensure image file has been dropped into the sketch. 
}



void draw() {

  //image(img,0,0); //draw raw image

//for loop speeds up and does this 100 times each run of the draw

  for (int i = 0; i < 100; i ++) { 
    float x = random(width);
    float y = random(height); 
    
    color c = img.get(int(x), int(y)); //get colour data from image at that pixle location
    fill(c);
    noStroke();
    
    rect (x, y, 10, 10); //draw the rectangle filled with that colour
  }
  
}


void keyPressed() {
}