class Star //note that this class does NOT extend Floater
{
  private double myX, myY;
  private int myColor;
  private int mySize;
  public Star(){
    myX = Math.random()*501;
    myY = Math.random()*501;
    myColor = color((int)(Math.random()*256),(int)(Math.random()*256),(int)(Math.random()*256), 200);
    mySize = (int)(Math.random()*5)+1;
  }
  public void show(){
    fill(myColor);
    stroke(myColor);
    ellipse((float)myX, (float)myY, mySize, mySize);
  }

}
