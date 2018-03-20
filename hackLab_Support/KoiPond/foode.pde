class Food

{

  int r = 0 ;

  void display()
  {
    fill(0);
    stroke(0);
    translate(foodx, foody);

    rotate(radians(r));

    line(- (r%6), -(r%6), r%6, r%6);
    line(r%6, -(r%6), -(r%6), r%6);

    r = r+2;
  }
}