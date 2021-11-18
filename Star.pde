Star [] silly = new Star[200];
Spaceship sway = new Spaceship();
public void setup() 
{
  size(500, 500);
  background(0);
  for(int i = 0; i < silly.length; i++){
    silly[i] = new Star();
  }
  
}
public void draw()
{
  background(0);
  sway.show();
  sway.move();
  for(int i = 0; i < silly.length; i++){
    silly[i].show();
    frameRate(3);
    silly[i].move();
  }
}
public void keyPressed()
{
  if(key == 'a' | key == 'A'){
    sway.turn(-10);
  }else if(key == 'd' | key == 'D'){
    sway.turn(10);
  }else if(key == 'w' | key == 'W'){
    sway.accelerate(0.3);
  }else if(key == 's' | key == 'S'){
    sway.accelerate(-0.3);
  }else if(key == 'h' | key == 'H'){  
    sway.hyperspace();
  }
}
