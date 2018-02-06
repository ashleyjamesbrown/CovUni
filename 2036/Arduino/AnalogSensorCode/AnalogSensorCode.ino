// analog sensor code


void setup() {
  // put your setup code here, to run once:

  Serial.begin(9600); //display values
  pinMode(A0,INPUT); //analog 0
}

void loop() {
  // put your main code here, to run repeatedly:

  float ldr = analogRead(A0);
  Serial.println(ldr);
}
