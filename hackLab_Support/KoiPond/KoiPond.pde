// hacklab support
// fishtank
// ashley james brown



float xspeed;
float yspeed;
float circlex=100;
float circley=100;


void setup() {
  size(1920, 1800);
  smooth();

  fish = new Fish();
  rain = new Rain();
  food = new Food();

  for (int z = 0; z < lotus.length; z++)
  {
    lotus[z]  = new Lotus();
  }

  for (int i = 0; i < xpos.length; i++)
  {
    xpos[i]= 0 ;
    ypos[i]= 0 ;
  }

  for (int c = 0; c < rainXpos.length; c++)
  {
    rainXpos[c] = 0;
    rainYpos[c] = 0;
  }

  ellipse(circlex, circley, 10, 10);
}

void draw() 
{
  background(255);
  rain.draw();
  fish.display();

  float distance = dist( xpos[xpos.length-1], ypos[ypos.length-1], foodx, foody );

  if ( distance < 20)
  {
    foodx = random(0, 500)+40;
    foody = random(0, 160)+20;

    int cont = xpos.length + 1;

    xpos = expand(xpos, cont);
    ypos = expand(ypos, cont);
  }

  for (int x = 0; x < lotus.length; x++)
  {
    lotus[x].display();
  }
  food.display();
}