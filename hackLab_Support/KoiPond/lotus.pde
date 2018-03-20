class Lotus
{

  float posx = random(0, width); 
  float posy = random(0, height);
  int an = int(random(1, PI));

  void display()

  {
    noStroke();
    fill(120, 200, 120, 230);

    arc( posx, posy, 50, 50, PI/2+an, PI*2+1+an);
  }
}