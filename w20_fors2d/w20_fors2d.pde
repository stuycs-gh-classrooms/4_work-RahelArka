//State variable constants
int DIRT = 0;
int FIRE = 1;
int BURNT = 2;
int GRASS = 3;

//Helpful color values
color DIRT_COLOR = #81582F;
color FIRE_COLOR = #F20C0C;
color BURNT_COLOR = #810707;
color GRASS_COLOR = #49B90D;

//Driver variables
boolean burning = false;
int grassDensity = 75;
int tractLength = 20;
Land grid[][];


void setup() {
  size(700, 350);
  frameRate(5);
  grid = new Land[10][tractLength];
    setupLand(grid, grid.length, tractLength, grassDensity);
    
}//setup

void draw() {
  showLand(grid);
  if (burning) {
    liveFire(grid);
  }
}//draw


void setupLand(Land[][] field, int numRows, int numPlots, float density) {
  int plotSize = width / numPlots;
  for (int i=0; i<numRows; i++) {
    for (int l=0; l<field[i].length; l++){
    int type = DIRT;
    if (l == 0) {
      type = FIRE;
    }// fire
    else if (random(100) < density) {
      type = GRASS;
    }//grass
    field[i][l] = new Land(l*plotSize, i * plotSize, plotSize, type);
    }
  }
}//setupLand

void showLand(Land[][] field) {
  for (int i=0; i < field.length; i++) { 
    for(int l=0; l < field[i].length; l++) { 
      field[i][l].display();
  }
}

}//showLand

void liveFire(Land[][] field) {
  for (int i=0;i<field.length; i++){
    field[i][0].updateNextState(0);
    for (int l=1; l<field[i].length; l++) {
      field[i][l].updateNextState(field[i][l-1].state);
    }// nextStates
    for (int l=0; l<field[i].length; l++) {
      field[i][l].changeState();
    }//change states
  }
}//liveFire





void keyPressed() {
  if (key == ' ') {
    burning = !burning;
  }//start burning
  else if (key == 'r') {
    burning = false;
    for (int i=0; i < grid.length; i++) { 
      for(int l=0; l < grid[i].length; l++){
        setupLand(grid, grid.length, tractLength, grassDensity);
      }
    }
    
  }
}
