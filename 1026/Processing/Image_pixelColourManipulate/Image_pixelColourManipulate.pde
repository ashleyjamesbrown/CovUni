// 1026mapa
// pixels and manipulation
// ashley james brown


PImage img; 

void setup() {
  size(600, 400);
  background(219, 35, 210);
  
  // make sure this file has been dropped onto the sketch
  img = loadImage("cat.jpg");
}



void draw() {
  
loadPixels(); //before we can begin to mess with teh pixels we must tell processing our intentions

  for (int x = 0; x < img.width; x ++) {
    for (int y = 0; y < img.height; y ++) {

      int location = x + y * img.width; //special maths to get pixel location

      float r = red(img.pixels[location]); //get the red value at that pixel location
      float g = green(img.pixels[location]); //green
      float b = blue(img.pixels[location]); //blue

      // colour algorithm, do somethign to those values
      
      r = r *3;
      g =g/2;
      b = b/2;

      //put the ammended colour back   
      color c = color(r, g, b);
      pixels[location] = c;
    }
  }
  
  updatePixels(); //tell processing we have finished manipulating the pixels and to show update them with any changes
}


void keyPressed() {
  saveFrame("img_pixel-###.jpg");
}