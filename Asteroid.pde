class Asteroid extends Floater{
  private double rotSpeed;
  public Asteroid(){
    corners = 8;
    xCorners = new int[]{3, 33, 24, 24, 6, -9, -21, -6};
    yCorners = new int[]{21, 3, -6, -21, -12, -33, -6, -3};
    myColor = color(100, 100, 100);
    myCenterX = Math.random()*501;
    myCenterY = Math.random()*501;
    myXspeed = Math.random()*5-2.5;
    myYspeed = Math.random()*5-2.5;
    myPointDirection = 0;
    rotSpeed = Math.random()*11-5;
  }
  public void move(){
    turn(rotSpeed);
    super.move();
}
}
