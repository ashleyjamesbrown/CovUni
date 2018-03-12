// 1026 mapa
// ashley james brown
// basic tilt switch

void setup() {
  pinMode(13,OUTPUT);
  pinMode(8,INPUT);
  Serial.begin(9600);
}

void loop() {
 
 float tilt = digitalRead(8);
 Serial.println(tilt);

}
