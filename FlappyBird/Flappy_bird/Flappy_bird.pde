int birdX=50;
int birdY=375;
int birdYVelocity = 50;
int gravity=1;
int gravMultiplier=1;
int antiGravity=-6;
int score=0;

int rectX=500;


int upperPipeHeight = 300;
int imageY = 0;
int pipeGap=200;

     PImage back;
     PImage pipeBottom;
     PImage pipeTop;
     PImage bird;



void setup(){
  size(500,750);
  
   back = loadImage("flappyBackground.jpg");
            pipeBottom = loadImage("bottomPipe.png");
            pipeTop = loadImage("topPipe.png");
            bird = loadImage("bird.png");
            bird.resize(50,50);
}

void draw(){

  
  textSize(80);
  if(birdX==rectX+50){
     score++; 
    }
  
  background(back);
  
  
  
  fill(255,255,30);
  image (bird, birdX, birdY);
 
  fill(255,255,255);
  text(score, 210, 100);
  
  birdY=birdY+gravity;
  gravity=gravity+gravMultiplier;
 
 if(gravity>=8){
  gravity=8; 
 }
  
  
  teleportPipes();
  
  if(birdY<=0 || birdY>= 650){
  System.exit(0); 
  }
  
  if(birdX>=rectX && birdX<= rectX+50 && birdY>=upperPipeHeight+pipeGap){
   System.exit(0); 
  }
  
   if(birdX>=rectX && birdX<= rectX+50 && birdY<=upperPipeHeight){
   System.exit(0); 
   
   
    
    
  }
  
}

void mousePressed(){
  birdY=birdY-birdYVelocity;
  
  gravity=0;
  
  for(int i=0; i<8; i++){
  gravity--;
  }
}

void teleportPipes(){
  fill(50,255,50);
  rect(rectX, 0, 50, upperPipeHeight);
  rect(rectX, upperPipeHeight+pipeGap, 50, 500);
  
  rectX=rectX-5;
  
  if(rectX<=-100){
    rectX=500;
    upperPipeHeight = (int) random(150, 500);
  }
  
  
  
}
