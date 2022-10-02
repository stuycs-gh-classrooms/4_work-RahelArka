int movingX;
int movingY;
int radius;
void setup () 
{
  size (500,500);
  background (#FFFFFF);
  radius = width/10;
  movingX = radius;
  movingY = radius + (2 * radius);
  
}

void circleRow(int startX, int endX, int y, int d) 
{
while(startX<=endX)
{
fill(#00FCE9);
circle(startX, y, d);
startX=startX+d;
}

}

void draw () 
{
  background (0);
  circleRow (radius, radius * 9, radius, 2 * radius);
  if (movingX < width - radius) 
  {
    fill (#FC7F00);
    circle (movingX, movingY, 2 * radius);
    movingX++;
  }
  else 
  {
    movingX = radius;
    movingY = movingY + (2 * radius);
  }
  if (movingY > 500) 
  {
    movingY = radius + (2*radius);
  }
}
