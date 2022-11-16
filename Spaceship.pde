class Spaceship extends Floater  
{   
    public Spaceship(){
      corners = 8;
      xCorners = new int[]{24, 15, -15, -30, -15, -30, -15, 15};
      yCorners = new int[]{0, 15, 15, 30, 0, -30, -15, -15};
      myColor = color(0, 100, 160);
      myCenterX = 250;
      myCenterY = 250;
      myXspeed = myYspeed = 0;
      myPointDirection = 0;
    }
    public void hyperSpace(){
      myXspeed = 0;
      myYspeed = 0;
      myCenterX = Math.random()*501;
      myCenterY = Math.random()*501;
      myPointDirection = Math.random()*360;
    }
    public void decelerate(double dAmount){
      double dRadians =myPointDirection*(Math.PI/180);     
      myXspeed -= ((dAmount) * Math.cos(dRadians));    
      myYspeed -= ((dAmount) * Math.sin(dRadians));       
    }
    
}
