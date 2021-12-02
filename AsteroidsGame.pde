Star [] silly = new Star[200];
Spaceship sway = new Spaceship();
followerShips [] bob;
public void setup() 
{
  size(500, 500);
  background(0);
  for(int i = 0; i < silly.length; i++){
    silly[i] = new Star();
  }
  bob = new followerShips[8];
  bob[0] = new followerShips();
  bob[0].setPosition(sway.getX()+10, sway.getY());
  bob[1] = new followerShips();
  bob[1].setPosition(sway.getX()+10, sway.getY()+10);
  bob[2] = new followerShips();
  bob[2].setPosition(sway.getX(), sway.getY()+10);
  bob[3] = new followerShips();
  bob[3].setPosition(sway.getX()-10, sway.getY());
  bob[4] = new followerShips();
  bob[4].setPosition(sway.getX()-10, sway.getY()-10);
  bob[5] = new followerShips();
  bob[5].setPosition(sway.getX(), sway.getY()-10);
  bob[6] = new followerShips();
  bob[6].setPosition(sway.getX()+10, sway.getY()-10);
  bob[7] = new followerShips();
  bob[7].setPosition(sway.getX()-10, sway.getY()+10);
  //bob[0].setPosition(bob[0].set(myCenterX()+10), bob[0].myCenterY()+10);
}
public void draw()
{
  background(0);
  sway.show();
  sway.move();
  for(int i = 0; i < bob.length; i++){
    bob[i].show();
    bob[i].move();
  }
  for(int i = 0; i < silly.length; i++){
    silly[i].show();
    frameRate(75);
    silly[i].move();
  }
}
public void keyPressed()
{
  if(key == 'a' | key == 'A'){
    sway.turn(-10);
    for(int i = 0; i < bob.length; i++){
      bob[i].turn(-10);
    }
  }else if(key == 'd' | key == 'D'){
    sway.turn(10);
    for(int i = 0; i < bob.length; i++){
      bob[i].turn(10);
    }
  }else if(key == 'w' | key == 'W'){
    sway.accelerate(0.3);
    for(int i = 0; i < bob.length; i++){
      bob[i].accelerate(0.3);
    }
  }else if(key == 's' | key == 'S'){
    sway.accelerate(-0.3);
    for(int i = 0; i < bob.length; i++){
      bob[i].accelerate(-0.3);
    }
  }else if(key == 'h' | key == 'H'){  
    sway.hyperspace();
    for(int i = 0; i < bob.length; i++){
      bob[i].hyperspace();
    }
  }
}
