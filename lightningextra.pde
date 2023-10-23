int yinc = 10;
int xinc = 2;
int dimensionY = 600;
int dimensionX = 400;
float r,g,b = 255.0;

void setup(){
  background(0);
}
  
void draw() {}

void settings() {
  size(dimensionX,dimensionY);
}

void mousePressed()
{
  colorchange();  
  lightning(dimensionX/2, 0);
}

void colorchange() {
  r = (float)Math.random() * 255;
  g = (float)Math.random() * 255;
  b = (float)Math.random() * 255;
  stroke(r,g,b);
}

void lightning(int startx, int starty) {
  int endX = startx;
  int endY = starty + yinc;
  
  if (Math.random() < 0.5) {
    endX += xinc;
  } 
  else {
    endX -= xinc;
  }
  
  line(startx, starty, endX, endY);
  
  if(endY < dimensionY) {
    lightning(endX, endY);
  }
  else {
    return;
  }
  
}
