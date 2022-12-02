class Land {
  int x;
  int y; 
  int state; 
  int Size;
  int nextState;
  color COLOR;
  
  
  
  Land(int plotX, int plotY, int plotSize, int plotState){
    
    x = plotX;
    y = plotY;
    Size = plotSize;
    nextState = plotState;
    state = plotState;
  }
  void display(){
   if (state == DIRT){
      COLOR = DIRT_COLOR;
    }
    if (state == FIRE){
      COLOR = FIRE_COLOR;
    }
    if (state == BURNT){
      COLOR = BURNT_COLOR;
    }
    if (state == GRASS){
      COLOR = GRASS_COLOR;
    }
    fill(COLOR);
    
   rect(x,y,Size,Size);
  
  }
  
  void changeState(){
    state = nextState;
 
  }
  
  void updateNextState(int n){
    if (this.state == FIRE){
      this.nextState = BURNT;
    }
    
    if (n==FIRE && this.state == GRASS){
      this.nextState=FIRE;
    }
    
  }
  
  
  
  
}
