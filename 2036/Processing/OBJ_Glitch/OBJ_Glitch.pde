//
// author: ashleyjamesbrown
// date:   jan2017
// 
// notes:  import a obj, find all faces and mesh / vertex data, manipulate using random numbers


PShape s;
int childCount=0;

void setup() {
  size(800, 800, P3D); //esnure to use 3d renderer

  // load 3d object .obj file from the data directory. to display texture the .mtl must be present also
  s = loadShape("untitled.obj"); 

  background(0);

  //// print all vertices
  printChildVertices(s);
  //// print a specific vertex i,j : (x,y,z)
  println("s.getChild(0).getVertex(0):\n  ", s.getChild(0).getVertex(0), "\n");
  //// get summary counts
  println(getChildrenVertexCount(s));
}

void draw() {
  //scene lighting so we can see the objects 3d
  lights();
  pointLight(51, 102, 126, 35, 40, 36);
  directionalLight(26, 16, 126, 0, 0, -1);
  ambientLight(102, 102, 102);
  translate(width/2, height/2);

  rotateZ(frameCount*0.01);
  rotateX(frameCount*0.01);
  scale(7);

  background(0);
  shape(s, 0, 0, 80, 80);

  // mash();
}



void printChildVertices(PShape shape) {
  for (int i=0; i<shape.getChildCount(); i++) {
    PShape child = shape.getChild(i);
    for (int j=0; j<child.getVertexCount(); j++) {
      PVector vert = child.getVertex(j);
      println(vert);
    }
  }
  println("");
}

int getChildrenVertexCount(PShape shape) {
  int vertexCount = 0;
  for (PShape child : shape.getChildren()) {
    vertexCount += child.getVertexCount();
  }
  childCount = shape.getChildCount();
  println("Child shapes:", childCount);
  println("Total Vertex count:", vertexCount);

  println("Vert per children", vertexCount/float(childCount), "\n");
  return vertexCount;
}

void keyPressed() {
  mash();
  saveFrame("obj_glitch-###.jpg");
}

void mash() {
  // take every triangle mesh that exists and alter its first vertex only.
  for (int n=0; n < childCount; n++) {
    
    PVector x = new PVector(s.getChild(n).getVertexX(0)+random(-5, 5), s.getChild(n).getVertexY(0)+random(-5, 5), s.getChild(n).getVertexZ(0)+random(-5, 5)); 
    s.getChild(n).setVertex(0, x); 
    
    //PVector y = new PVector(s.getChild(n).getVertexX(0)+random(-5, 5), s.getChild(n).getVertexY(0)+random(-5, 5), s.getChild(n).getVertexZ(0)+random(-5, 5)); 
    //s.getChild(n).setVertex(1, y); 
    //PVector z = new PVector(s.getChild(n).getVertexX(0)+random(-5, 5), s.getChild(n).getVertexY(0)+random(-5, 5), s.getChild(n).getVertexZ(0)+random(-5, 5)); 
    //s.getChild(n).setVertex(2, z);
  }
}