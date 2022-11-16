Spaceship myShip = new Spaceship();
public void setup() 
{
  size(500, 500);
  background(0);
}
public void draw() 
{
  myShip.show();
  myShip.move();
}

public void keyPressed(){
  if (key == 'a')
    myShip.turn(-12);
   if (key == 'd')
    myShip.turn(12);   
    if (key == 's')
      myShip.accelerate(40);
    if (key == 'r')
    
     myShip.hyperSpace();
}
