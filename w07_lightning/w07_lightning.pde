void drawLightning(int x, int y, int numParts)
{

  while (numParts > 0)
  {

    
    int nextx = (x+int(random(-5, 6)));
    int nexty =(y+int(height-y)/numParts);
    
    line(x, y, nextx, nexty);
    

      numParts = numParts-1 ;
  }
}

void setup()
{

  size(500, 500);
  background(#FFFFFF);

  drawLightning(250, 0, 7);
  drawLightning(100, 0, 7);
  drawLightning(350, 0, 7);
  drawLightning(450, 0, 7);
  drawLightning(0, 0, 7);
}
