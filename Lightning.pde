int yinc = 10;
int xinc = 2;
int dimensionY = 413;
int dimensionX = 550;
float r,g,b = 255.0;
PImage bg;

//spots for lightning
int xSpotOne = 170;
int ySpotOne = 180;
int xSpotTwo = 265;
int ySpotTwo = 120;
int xSpotThree = 15;
int ySpotThree = 205;

void setup(){
  
  bg = loadImage("tower.jpg");
  background(bg);
}

void draw() {}

void settings() {
  size(dimensionX,dimensionY);
}

void mousePressed()
{
  colorchange(); 
  double rand = Math.random();
  
  if (rand < 0.5) {
    lightning(xSpotOne, ySpotOne);
  }
  else if (rand < 0.75) {
    lightning(xSpotTwo, ySpotTwo);
  }
  else {
    lightning(xSpotThree, ySpotThree);
  }
  
}

void colorchange() {
  r = (float)Math.random() * 255;
  g = (float)Math.random() * 255;
  b = (float)Math.random() * 255;
  stroke(r,g,b);
}

void lightning(int startx, int starty) {
  int endX = startx;
  int endY = starty - yinc;
  
  if (Math.random() < 0.5) {
    endX += xinc;
  } 
  else {
    endX -= xinc;
  }
  
  line(startx, starty, endX, endY);
  
  if(endY > 0) {
    lightning(endX, endY);
  }
  else {
    return;
  }
  
}
