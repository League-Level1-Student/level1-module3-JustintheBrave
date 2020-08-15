int hop = 75;
int frogY=700;
int frogX=375;

Car car = new Car(1, 525, 60, 5);
Car carr = new Car(680, 450, 70, -4);
Car carrr = new Car(1, 375, 80, 6);
Car carrrr = new Car(1, 225, 70, 3);


void setup(){
  size(750,750);
}

void draw(){
 background(0,0,0);
 
 //frog
 fill(23,155,37);
 ellipse(frogX, frogY, 50, 50);
 
 //Cars
 car.display();
 carr.display();
 carrr.display();
 carrrr.display();
 
 //car driving
 carr.driveLeft();
 car.driveRight();
 carrrr.driveRight();
 carrr.driveRight();
 
 //frog movement
 if(frogX>=750){
  frogX=750;
 }
 
 if(frogX<=0){
  frogX=0;
 }
 
 if(frogY>=700){
   frogY=700;
 }
 //Dub
 if(frogY<=25){
   textSize(40);
   text("you took the W", 375, 375);
 }
 
//car hits frog
boolean death = intersects(car);
boolean deathh = intersects(carr);
boolean deathhh = intersects(carrr);
boolean deathhhh = intersects(carrrr);

if(death==true){
 frogY=700; 
textSize(100);
  text("L", 275, 375);
}

if(deathh==true){
  frogY=700;
  textSize(100);
  text("L", 275, 375);
}
if(deathhh==true){
 frogY=700; 
 textSize(100);
  text("L", 275, 375);
}
if(deathhhh==true){
 frogY=700; 
 textSize(100);
  text("L", 275, 375);
}
}


void keyPressed()
{
    if(key == CODED){
        if(keyCode == UP)
        {
            frogY=frogY-hop;
        }
        else if(keyCode == DOWN)
        {
            frogY=frogY+hop;
        }
        else if(keyCode == RIGHT)
        {
            frogX=frogX+hop;
        }
        else if(keyCode == LEFT)
        {
            frogX=frogX-hop;
        }
    }
}
//frog dead
boolean intersects(Car car) {
 if ((frogY > car.getY() && frogY < car.getY()+50) &&
                (frogX > car.getX() && frogX < car.getX()+car.getSize())) {
   return true;
  }
 else  {
  return false;
 }
}



 //confusing stuff
 
public class Car{
  int carX;
  int carY;
  int carSize;
  int carSpeed;
  
  public Car(int carX, int carY, int carSize, int carSpeed){
    this.carX=carX;
    this.carY=carY;
    this.carSize=carSize;
    this.carSpeed=carSpeed;
  }
  
  void display()
  {
    fill(255,255,30);
    rect(carX , carY,  carSize, 50);
  }
  
  void driveLeft(){
   carX=carX+carSpeed; 
   if(carX<=-80){
   carX=750;
  }
  }
  void driveRight(){
     carX=carX+carSpeed; 
   if(carX>=780){
   carX=-80;
  }
}

int getX(){
  return carX;
}

int getY(){
  return carY;
}

int getSize(){
  return carSize;
}



}
