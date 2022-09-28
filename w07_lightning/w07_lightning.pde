void drawLightning(int x, int y, int numParts) {
;


  stroke (#9903FF);
  int yLength = ((500 - y )/numParts);
 

while (y <= 500){
  int nextx = int (random (x-5, x+6));
  int nexty = y +  yLength;
line (x,y,nextx,nexty);
x = nextx;
y = y + yLength;


}
  
}




void setup (){
size (500,500);
background (#FFFFFF);
fill (#16FF03);


drawLightning (50,00,150);
drawLightning (200,0,78);
drawLightning (100,0,63);
drawLightning (300,0,99);
drawLightning (450,0,223);
}
