class Star
{
  private int myX, myY, myColor;
  public Star(){
    myX = (int)(Math.random()*500);
    myY = (int)(Math.random()*500);
    myColor = color((int)(Math.random()*256+100), (int)(Math.random()*256+100), (int)(Math.random()*256+100));
  }
  public void show(){
    noStroke();
    fill(myColor);
    ellipse(myX, myY, 5, 5);
  }
  public void move(){
    myX = (int)(Math.random()*500);
    myY = (int)(Math.random()*500);
  }
}
