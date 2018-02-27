// 1026mapa
// ashley james brown
// load a blender obj file into processing


PShape blender;
float ry;



public void setup() {
  size(800, 800, P3D);

 
  blender = loadShape("blender1.obj");
 // blender.setTextureMode(NORMAL);

}


public void draw() {
  background(0);

  translate(width/2, height/2);
  lights();

  scale(50);

 // directionalLight(255, 0, 20, 0, mouseX, mouseY);

  rotateZ(PI);
  rotateX(ry);

  shape(blender);

  ry+=0.02;
}