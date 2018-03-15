import processing.serial.*;

// 1026mapa
// ashley james brown
// multipel sensors from arduino parsed in processing and used


float sensor1 = 0;
float sensor2 = 0;

void setup() {
  size(800, 600);
  background(0);
  setupSerial();
}

void draw() {
  background(0);
  
  fill(255,0,0);
  ellipse( width*0.3,height/2,sensor1,sensor1);
  
  fill (0,0,255);
  ellipse( width*0.7,height/2,sensor2,sensor2);
}



Serial myPort;  // Create object from Serial class
int val;      // Data received from the serial port


void setupSerial() {
  printArray(Serial.list());
  try {
    String portName = Serial.list()[6];
    myPort = new Serial(this, portName, 9600);  //115200
    println("connected to -->  " +portName);
    myPort.bufferUntil(','); //enables to split the data via a comma which is set in teh arduino code
  } 
  catch (Exception e) {
    println("no device connection found");
  }
}




void serialEvent(Serial myPort) {

  String inString = myPort.readStringUntil(',');
  // split the string into multiple strings
  // where there is a delimter":"
  
 // println(inString); //data line coming in

  String items[] = split(inString, ':');
  // if there was more than one string after the split
  if (items.length > 1) {
    String label = trim(items[0]);
    // remove the ',' off the end
    String val = split(items[1], ',')[0];

    // check what the label was and update the appropriate variable
    if (label.equals("S1")) {
      println("looks like sensor 1 was   "+val);
      sensor1 = float(val);
    } 
    // check what the label was and update the appropriate variable
    if (label.equals("S2")) {
      println("looks like sensor 2 was   "+val);
      sensor2 = float(val);
    } 
    
    // more if statements for more possible data streams
    
    
    
  }
}