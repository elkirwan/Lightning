int startX = 150;
int startY = 0;
int endX = 150;
int endY = 0;
int sky = 7;

void setup()
{

  strokeWeight(1);
  background(150);
  size(300,300);
 strokeWeight(5);

  
  
}
void draw()
{
  darkness();
  clouds();
//stroke((int)(Math.random()));
stroke(255);
if(endX < 300)
{
  endY = startY + ((int)(Math.random()*9));
  endX = startX + ((int)((Math.random()*19)-9));
  
  line(startX, startY, endX, endY);
  startX = endX;
  startY = endY;
}
//if (endY>299)
//{
  //background(20);
  
//}
}
void mousePressed()
{
background(150);
startX = 150;
startY = 0;
endX = 150;
endY = 0; 
}
void darkness()
{
   fill(0,0,0,sky);
  rect(0,0,300,300);

}
void clouds()
{
  //moon
  fill(255,255,255);
ellipse(50,50,90,90);
  noStroke();
  fill(80);
  ellipse(50,100,90,60);
  ellipse(80,90,90,80);
  ellipse(115,100,90,60);
  ellipse(250,150,90,70);
 ellipse(290,150,90,70);
//hills
fill(#153404);
ellipse(50,300,300,200);
ellipse(250,300,200,110);

}
