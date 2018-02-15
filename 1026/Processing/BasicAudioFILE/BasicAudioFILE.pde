// 1026MAPA
// ashley james brown
// audio input


import processing.sound.*;


int scale=1;
float threshold = 60;


SoundFile soundfile;

void setup() {
  size(400, 400);

  //Load a soundfile
  soundfile = new SoundFile(this, "vibraphon.aiff");
  // Play the file in a loop
  soundfile.loop();

  // These methods return useful infos about the file
  //    println("SFSampleRate= " + soundfile.sampleRate() + " Hz");
  //    println("SFSamples= " + soundfile.frames() + " samples");
  //   println("SFDuration= " + soundfile.duration() + " seconds");
}


void draw() {
  background(0);

  soundfile.rate(map(mouseX, 0, width, 0.25, 4.0)); //rate playback speed
  soundfile.amp(map(mouseY, 0, width, 0.2, 1.0));   //volume
  soundfile.pan(map(mouseY, 0, width, -1.0, 1.0)); //pan
}