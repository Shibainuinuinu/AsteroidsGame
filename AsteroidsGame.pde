Spaceship myShip = new Spaceship();
Star[] starArray = new Star[300];
public void setup() 
{
  size(500, 500);
  for (int i=0; i<starArray.length; i++)
    starArray[i] = new Star();
}
public void draw() 
{
  background(0);
  for (int i=0; i<starArray.length; i++){
    starArray[i].show();
  }
  myShip.show();
  myShip.move();
}

public void keyPressed(){
  if (key == 'a')
      myShip.turn(-10);
  if (key == 'd')
      myShip.turn(10);   
   if (key == 'w')
      myShip.accelerate(1);
   if (key == 'r')
      myShip.hyperSpace();
}
