class Rain {

void draw()
{

fill(0);
rainXpos[rainXpos.length-1] = int(random(1,width));
rainYpos[rainYpos.length-1] = int(random(1,height));

for (int c =0; c < rainXpos.length -1 ; c++)
{
rainXpos[c]=rainXpos[c+1];
rainYpos[c]=rainYpos[c+1];
}

for (int c =0; c< rainXpos.length; c++)
{
stroke(155,155,155,c);
noFill();
ellipse(rainXpos[c],rainYpos[c],90-c,90-c);
}

}

}