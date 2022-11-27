Spaceship myShip = new Spaceship();
Star[] starArray = new Star[300];
ArrayList<Asteroid> rocks = new ArrayList<Asteroid>();
public void setup() 
{
  size(500, 500);
  for (int i=0; i<starArray.length; i++)
    starArray[i] = new Star();
  for (int i=0; i<12; i++)
    rocks.add(new Asteroid());
}
public void draw() 
{
  background(0);
  for (int i=0; i<starArray.length; i++)
    starArray[i].show();
  for (int i=0; i<rocks.size(); i++){
    rocks.get(i).show();   
    rocks.get(i).move();
    float d = dist((float)myShip.getX(), (float)myShip.getY(), (float)rocks.get(i).getX(), (float)rocks.get(i).getY());
    if (d<10)
      rocks.remove(i);
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
