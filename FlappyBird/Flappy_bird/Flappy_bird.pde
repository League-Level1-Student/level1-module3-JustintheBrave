int birdX=50;
int birdY=375;
int birdYVelocity = 50;
int gravity=1;
int gravMultiplier=1;
int antiGravity=-6;

int rectX=500;


int upperPipeHeight = 300;
int pipeGap=200;


void setup(){
  size(500,750);
}

void draw(){
  background(50,230,240);
  fill(255,255,30);
  ellipse(birdX,birdY,40,40);
  
  birdY=birdY+gravity;
  gravity=gravity+gravMultiplier;
 
 if(gravity>=8){
  gravity=8; 
 }
  
  
  teleportPipes();
  
  if(birdY<=0 || birdY>= 750){
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
  rect(rectX,0,50,upperPipeHeight);
  rect(rectX,upperPipeHeight+pipeGap,50,500);
  
  rectX=rectX-5;
  
  if(rectX<=-100){
    rectX=500;
    upperPipeHeight = (int) random(100, 500);
  }
  
}
