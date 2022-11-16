class Spaceship extends Floater  
{   
    public Spaceship(){
      corners = 8;
      xCorners = new int[]{8,5,5,-5,-5,-5,-10,-10};
      yCorners = new int[]{0,-5,5,-5,5,0,-10,10};
      myColor = color(#193F90);
      myCenterX = 250;
      myCenterY = 250;
      myXspeed = 3;
      myYspeed = 3;
      myPointDirection = 0;
    }
    public void hyperSpace(){
      myXspeed = 0;
      myYspeed = 0;
      myCenterX = Math.random()*501;
      myCenterY = Math.random()*501;
      myPointDirection = Math.random()*360;
    }
    
    
}
