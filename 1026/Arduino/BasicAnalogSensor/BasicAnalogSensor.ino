// 1026 mapa
// ashley james brown
// basic analog sensor reading

void setup() {
  pinMode(A0,INPUT);
  pinMode(13,OUTPUT);
  Serial.begin(9600);
}

void loop() {

 float sensor = analogRead(A0);
 Serial.println(sensor);
  digitalWrite(13,sensor);
}
