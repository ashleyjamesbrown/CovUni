// 1026mapa
// ashley james brown
// capacitive touch light 

#include <CapacitiveSensor.h>
CapacitiveSensor cp = CapacitiveSensor(4, 2);

void setup() {
  pinMode(A0, INPUT);
  pinMode(13, OUTPUT);
  Serial.begin(9600);
}

void loop() {

  long touch = cp.capacitiveSensor(30);
  Serial.println(touch);

  if (touch > 1000) {
    digitalWrite(13, HIGH);
  } else {
    digitalWrite(13, LOW);
  }


}
