import processing.sound.*;

// 1026mapa
// pixels and manipulation
// ashley james brown


// import video library and create a new instance of the Capture object to allow us to connect to the camera
import processing.video.*;
Capture vid;


AudioIn input;
Amplitude rms;

int scale=1;


void setup() {
  size(640, 480);
  background(223, 24, 234);

  // give me a list (array) of all connected cameras and the possible supported resolutions and then print them out to the console
  String[] cams = Capture.list();
  printArray(cams);

  vid = new Capture(this, 640, 480, 30); // use this , x res, y res, framerate
  vid.start(); //start teh camera
  
  input = new AudioIn(this, 0);
  input.start();
  rms = new Amplitude(this);
  rms.input(input);
  
}


void draw() {

  //image(vid,0,0); // displays raw video feed direct from camera
  scale=int(map(rms.analyze(), 0, 0.5, 1, 350));
  
  
  loadPixels(); //before we can begin to mess with teh pixels we must tell processing our intentions

  for (int x = 0; x < vid.width; x ++) {
    for (int y = 0; y < vid.height; y ++) {

      int location = x + y * vid.width; //special maths to get pixel location

      float r = red(vid.pixels[location]); //get the red value at that pixel location
      float g = green(vid.pixels[location]); //green
      float b = blue(vid.pixels[location]); //blue

      // colour algorithm, do somethign to those values
      
      //lets make a pink filter for the video
      r = scale;
      g = g;
      b = b;

      //put the ammended colour back   
      color c = color(r, g, b);
      pixels[location] = c;
    }
  }
  
  updatePixels(); //tell processing we have finished manipulating the pixels and to show update them with any changes

}


void keyPressed() {
  //saves a screenshot of the canvas to the sketch folder.
  // cmd+k opens sketch folder location.
  saveFrame("cam-###.jpg"); // hint the -### is an auto number method so we dont overwrite the file
}


// needed to smoothly grab video at the same time as the draw method runs.
// this is like event listening / threading / synchronous data etc

void captureEvent(Capture vid) {
  vid.read();
}