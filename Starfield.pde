Particle [] stars;
void setup()
{
  background(0);
  size(500, 500);
  stars = new Particle[1000];
  for(int i = 0; i < stars.length; i++){
   if(i < 10){
    stars[i] = new OddballParticle();
   }
   else
     stars[i] = new Particle();
  }
}
void draw()
{
  for(int i = 0; i < stars.length; i++){
  stars[i].show();
  stars[i].move();
  }
}


class Particle
{
  double myX, myY, myAngle, mySpeed;
  int myColorR, myColorG, myColorB;
  Particle()
  {
   myX = 250;
   myY = 250;
   mySpeed = (Math.random()*15);
   myAngle = (int)(Math.random()*1000);
   myColorR = (int)(Math.random()*256);
   myColorG = (int)(Math.random()*256);
   myColorB = (int)(Math.random()*256);
   
   
  }
  void move(){
    myX = myX + Math.cos(myAngle)*mySpeed;
    myY = myY + Math.sin(myAngle)*mySpeed;
  }
  void show(){
    fill(myColorR, myColorG, myColorB);
    ellipse((float)myX, (float)myY, 3, 3); 
  }
}

class OddballParticle extends Particle
{
  OddballParticle(){
   myX = 250;
   myY = 250;
   mySpeed = (Math.random()*25);
   myAngle = (int)(Math.random()*1000);
   myColorR = (int)(Math.random()*256);
   myColorG = (int)(Math.random()*256);
   myColorB = (int)(Math.random()*256);
  }
  void move(){
    myX = myX + Math.cos(myAngle)*mySpeed;
    myY = myY + Math.sin(myAngle)*mySpeed;
  }
  void show(){
    fill(myColorR, myColorG, myColorB);
    ellipse((float)myX, (float)myY, 15, 15);
  }
}
