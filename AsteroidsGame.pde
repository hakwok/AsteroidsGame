Star [] silly = new Star[200];
Spaceship sway = new Spaceship();
ArrayList <Asteroid> boomer = new ArrayList <Asteroid>();
public void setup() 
{
  size(500, 500);
  background(0);
  for(int i = 0; i < silly.length; i++){
    silly[i] = new Star();
  }
  for(int i = 0; i < 10; i++){
    boomer.add(new Asteroid());
  }
}
public void draw()
{
  background(0);
  for(int i = 0; i < silly.length; i++){
    silly[i].show();
  }
  sway.show();
  sway.move();
  for(int i = 0; i < boomer.size(); i++){
    boomer.get(i).show();
    boomer.get(i).move();
    float distance = dist((float)sway.getX(), (float)sway.getY(), (float)boomer.get(i).getX(), (float)boomer.get(i).getY());
    if(distance < 20){
      boomer.remove(i);
    }
  }
  for(int i = 0; i < boomer.size(); i++){
    boomer.get(i).show();
    boomer.get(i).move();
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
