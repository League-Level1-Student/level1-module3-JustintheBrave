int hop = 75;
int frogY=700;
int frogX=375;

void setup(){
  size(750,750);
}

void draw(){
 background(0,0,0);
 
 fill(23,155,37);
 ellipse(frogX, frogY, 50, 50);
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
