Spaceship myShip = new Spaceship();
Star[] starArray = new Star[300];
ArrayList<Asteroid> rocks = new ArrayList<Asteroid>();
ArrayList<Bullet> shots = new ArrayList<Bullet>();
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
    if (d<20){
      rocks.remove(i);
      i--;
      }
  }
  for (int i=0; i<shots.size(); i++){
    shots.get(i).show();
    shots.get(i).move();
  }
  for (int i=0; i<shots.size(); i++){
    for (int j=0; j<rocks.size(); j++){
      float d = dist((float)shots.get(i).getX(), (float)shots.get(i).getY(), (float)rocks.get(j).getX(), (float)rocks.get(j).getY());
      if (d<20){
        shots.remove(i);
        rocks.remove(j);
        break;
      }
    }
  }
  myShip.show();
  myShip.move();

}

public void keyPressed(){
  if (key == 'a')
      myShip.turn(-20);
  if (key == 'd')
      myShip.turn(20);   
   if (key == 'w')
      myShip.accelerate(1);
   if (key == 'r')
      myShip.hyperSpace();
   if (key == ' ')
     shots.add(new Bullet(myShip));
       
}
