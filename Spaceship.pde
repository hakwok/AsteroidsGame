class Spaceship extends Floater  
{   
  public Spaceship(){
    corners = 5;
    xCorners = new int[]{-8, -8, 0, 10, 0};
    yCorners = new int[]{8, -8, -3, 0, 3};
    myColor= color(255, 255, 255);
    myCenterX = myCenterY = 250;
    myXspeed = myYspeed = 0;
    myPointDirection = 0;
  }
  public double getmyXspeed(){return myXspeed;}
  public double getmyYspeed(){return myYspeed;}
  public double getX(){return myCenterX;}
  public double getY(){return myCenterY;}
  public double getPointDirection(){return myPointDirection;}
  public void hyperspace(){
     myXspeed = 0;
     myYspeed = 0;
     myPointDirection = (int)(Math.random()*360);
     myCenterX = (int)(Math.random()*500);
     myCenterY = (int)(Math.random()*500);
  }
}
