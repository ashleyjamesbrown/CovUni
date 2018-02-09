// 1026mapa
// pixels and manipulation
// ashley james brown


// import video library and create a new instance of the Capture object to allow us to connect to the camera
import processing.video.*;
Capture vid;



void setup() {
  size(640, 480);
  background(223, 24, 234);

  // give me a list (array) of all connected cameras and the possible supported resolutions and then print them out to the console
  String[] cams = Capture.list();
  printArray(cams);

  vid = new Capture(this, 640, 480, 30); // use this , x res, y res, framerate
  vid.start(); //start teh camera
}


void draw() {

  //image(vid,0,0); // displays raw video feed direct from camera

  // just to speed up the process if we put the code inside a for loop it repeats it 100 times. (then draw runs at 30* a second so we get it 300 times a second)
  for (int i = 0; i < 100; i ++) {
    //choose a random position on screen
    float x = random(width);
    float y = random(height);  
    //get the pixel colour at that location/position from the image buffer vid
    color c = vid.get(int(x), int(y));
    //fill with that colour
    fill(c);
    noStroke();
    //draw a rectangle at that location
    rect (x, y, 10, 10);
  }
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