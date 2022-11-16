int[] xvals;
int[] yvals;
int numPoints;





void setup() {
  size (600, 400);
  background (0);
  xvals = new int[100];
  yvals = new int[100];
  numPoints = 0;
  stroke(255);
  drawLines (xvals, yvals);
}






void draw (){
  background(0);
  drawLines(xvals, yvals);
}







void mousePressed(){ 
  xvals[numPoints]=(mouseX);
  yvals[numPoints]=(mouseY);
  numPoints++;
  println(xvals);
}







void drawLines(int[] xs, int[] ys){
  strokeWeight(3);
  for(int i=1;i<numPoints;i++){
    line(xs[i-1],ys[i-1],xs[i],ys[i]);
  }
}






void moveLines(int[] xs, int[] ys, int xMod, int yMod){
  if (keyCode == UP){
    for(int i=0;i<ys.length;i++){
      ys[i]-=yMod;
    }
  }
  if (keyCode==DOWN){
    for(int i=0;i<ys.length;i++){
      ys[i]+=yMod;
    }
  }
  if (keyCode==LEFT){
    for(int i=0;i<xs.length;i++){
      xs[i]-=xMod;
    }
  }
  if (keyCode==RIGHT){
    for(int i=0;i<xs.length;i++){
      xs[i]+=xMod;
    }
  }
}







void keyPressed(){
  if (key == 'c'){
    numPoints=0;
  }
  if (key == CODED){
    moveLines(xvals, yvals, 1, 1);
  }
}
