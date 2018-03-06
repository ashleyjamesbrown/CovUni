
//------------------------------------------------------------------
// author: thomas diewald
// date: 29.08.2011
// detecting and decoding barcodes via webcam
//------------------------------------------------------------------


// updated for 2018 by 
// ashley james brown
// using processing 3.3.6


import processing.video.*;


import diewald_bardcode.*;
import diewald_bardcode.CONSTANTS.*;


Capture cam;

int cam_size_x = 640;
int cam_size_y = (int)(3.0*cam_size_x/4.0);

PFont font;
DecodingResult dr;


void setup() {
  size(1200, 600);
  background(0);
  cam = new Capture(this, 640, 480);
  cam.start();

  font = createFont("Calibri", 15);
  textFont(font); 
  textAlign(LEFT, TOP); 
  textLeading(18);
}

void draw() {
  background(0);

  image(cam, 0, 0);

  //decodeMulti() can be very slow, ... it tries to find a barcode in the image, of all available barcodes in the library
  //    DecodingResult dr = Barcode.decodeMulti(cam, CHARACTER_SET.DEFAULT, true, DECODE.values());


  //barcode ean13 type                                this bit here is the type so try DECODE.QR_CODE for example
  dr = Barcode.decode(cam, CHARACTER_SET.DEFAULT, true, DECODE.EAN_13); //ean13

  // other types use DECODE. followed by an example below to see try those barcode types
  // DECODE.EAN_13
  // AZTEC
  // CODABAR
  // CODE_128
  // CODE_39
  // CODE_93
  // DATA_MATRIX
  // EAN_13
  // EAN_8
  // ITF
  // PDF_417
  // QR_CODE
  // UPC_A
  // UPC_E


  if ( dr.decodingFailed() ) {
    println( dr.getDecodingException() );
    fill(200); 
    text( "... couldnt find any decoded information ...", cam_size_x+40+1, height/2+1);
  } else {
    int x_pos = cam_size_x+40+1;
    int y_pos = 50;

    fill(200); 
    text("barcode-format: "+dr.getBarcodeFormat(), x_pos, y_pos);
    y_pos += 40;
    for (int i = 0; i < dr.getCorners().length; i++) {
      text(dr.getCorners()[i].toString(), x_pos, y_pos);
      y_pos += 20;
    }
    y_pos += 20;

    text(dr.getText(), x_pos, y_pos); //this is the actual link or text or whatever the qr code does
  } //end else
} // end if



void captureEvent(Capture cam) {
  cam.read();
}