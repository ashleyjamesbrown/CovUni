import processing.sound.*;

AudioIn input; // any input device set by the system
Amplitude rms; // volume

float scale = 1;
float threshold = 60;



PFont typeFace;


void setup() {
  size(600, 600);
  background(0);

  typeFace = loadFont("comicsans.vlw"); //font filename

  textFont(typeFace); // chose the typeface
  textSize(128);      // size
  textAlign(CENTER);  // centre the text

  input = new AudioIn(this, 0);
  input.start();

  rms = new Amplitude(this); //
  rms.input(input);
}


void draw() {

  background(0);

  //println(rms.analyze());

  scale = map(rms.analyze(), 0.0, 1.0, 1, 300);
  println(scale);

  // fill(scale*2,255-scale,0);
  // rect(width/2, height-scale, 50, 50);
  fill(255,scale,90);
  stroke(255);
  
  textSize(scale*2); //alter the size of the text via sound
  
  
  pushMatrix();
  translate(width/2,height/2);
  //rotate(scale); //rotate via volume
  rotate(frameCount*0.1); //always rotate and add the volume
  text("YO", 0, 0);
  popMatrix();


}