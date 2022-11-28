class Bullet extends Floater{
  public Bullet(Spaceship myShip){
    myCenterX = myShip.getX();
    myCenterY = myShip.getY();
    myXspeed = myShip.getXspeed();
    myYspeed = myShip.getYspeed();
    myPointDirection = myShip.getPointDirection();
    myColor = color(255, 255, 255);
    accelerate(6);
  }
  public void show(){
    fill(myColor);
    ellipse((float)myCenterX, (float)myCenterY, 10, 10);
  }
  public void move(){
    myCenterX += myXspeed;    
    myCenterY += myYspeed;    
  }
  public double getX(){
    return myCenterX;
  }
  public double getY(){
    return myCenterY;
  }
}
