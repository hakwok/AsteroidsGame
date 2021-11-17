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
  }
}
public void keyPressed()
{
  if(key == 'a'){
    sway.turn(-5);
  }else if(key == 'd'){
    sway.turn(5);
  }else if(key == 'w'){
    sway.accelerate(0.3);
  }else if(key == 's'){
    sway.accelerate(-0.3);
  }else if(key == 'h'){  
    sway.hyperspace();
  }
}
