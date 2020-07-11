int birdX=50;
int birdY=375;
int birdYVelocity = 50;
int gravity=1;

int rectX=500;
int upperPipeHeight = 300;
int pipeGap=150;


void setup(){
  size(500,750);
}

void draw(){
  background(255,255,255);
  fill(255,255,30);
  ellipse(birdX,birdY,40,40);
  
  birdY=birdY+gravity;
  gravity++;
  if(gravity>=3){
   gravity=3; 
  }
  
  teleportPipes();
}

void mousePressed(){
  birdY=birdY-birdYVelocity;
  
  gravity=0;
}

void teleportPipes(){
  fill(50,255,50);
  rect(rectX,0,50,upperPipeHeight);
  rect(rectX,upperPipeHeight+pipeGap,50,500);
  
  rectX=rectX-5;
  
  if(rectX<=0){
    rectX=500;
    upperPipeHeight = (int) random(100, 500);
  }
  
}
