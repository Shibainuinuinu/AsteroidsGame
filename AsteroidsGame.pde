Spaceship myShip = new Spaceship();
public void setup() 
{
  size(500, 500);
}
public void draw() 
{
  background(0);
  myShip.show();
  myShip.move();
}

public void keyPressed(){
  if (key == 'a')
      myShip.turn(-10);
  if (key == 'd')
      myShip.turn(10);   
   if (key == 'w')
      myShip.accelerate(5);
   if (key == 'r')
      myShip.hyperSpace();

}
