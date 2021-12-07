class Asteroid extends Floater{
  private double rotation;
  public Asteroid(){
  corners = 7;
  xCorners = new int[]{-16, -14, -4, 4, 2, 8, -8};
  yCorners = new int[]{-16, 0, 6, 4, -10, -14, -20};
  myColor = color(150, 150, 150);
  myCenterX = (int)(Math.random()*500)+50;
  myCenterY = (int)(Math.random()*500)+50;
  myPointDirection = (int)(Math.random()*2)+1;
  rotation = (int)(Math.random()*6)-3;
  myXspeed = (Math.random()*2) -1;
  myYspeed = (Math.random()*2) -1;
  }
  public double getPointDirection(){return myPointDirection;}
  public double getX(){return myCenterX;}
  public double getY(){return myCenterY;}
   
  public void move(){
    turn(rotation);
    super.move();
  }
}
