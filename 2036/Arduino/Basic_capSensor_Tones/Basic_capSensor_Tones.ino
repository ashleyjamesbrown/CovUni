#include <CapacitiveSensor.h>
CapacitiveSensor cappy = CapacitiveSensor(4, 2);

int threshold = 100;

void setup() {
  // put your setup code here, to run once:
  Serial.begin(9600);
  pinMode(12, OUTPUT);
}


void loop() {
  // input
  // read the value from teh sensor/foil
  long val = cappy.capacitiveSensor(30);
  Serial.println(val);


  //output
  //once above a threshold then turn the light on

  if (val > threshold) {
    //led on
    digitalWrite(12, HIGH);
    //note on = tone(pin connected, frequency of note)
   tone(8,262);

  } else {
    //led off
    digitalWrite(12, LOW);
    // note off
    noTone(8);
  }


}


