int[] xvals;
int[] yvals;
int numPoints;


void setup (){
size(600, 400);
xvals = new int[100];
yvals = new int[100];


makeLines(xvals, yvals, 25);
drawLines(xvals, yvals);
}

void makeLines(int[] xs, int[] ys, int points){
  int max=min(points,100);
  for(int i=0;i<=max;i++){
    xs[i] = int(random(0,width));
    ys[i] = int(random(0,height));
    
  }
  numPoints=max;
}
void drawLines(int[] xs, int[] ys){
  for(int i=0;i<numPoints;i++){
    line(xs[i],ys[i],xs[i+1],ys[i+2]);
  }
}
