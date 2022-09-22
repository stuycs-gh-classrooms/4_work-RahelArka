void house(int cx, int cy, int size) {

fill(#00EDE7);
square(cx,cy,size);
fill(#DC00FF);
triangle(cx,cy,cx+size,cy,(cx+cx+size)/2,cy-size/2);
fill(#FFF700);
circle(400,0,100);
}

void setup()
{
  size(400,400);
  background(#FFFFFF);
  house(200,200,100);
  house(75,80,50);
  house(300,65,30);
  house(150,150,60);
  
  
}
