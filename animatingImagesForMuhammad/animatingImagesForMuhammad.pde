PImage[] cat = new PImage[8];
int catCounter;

void setup() {
  size(800, 800);
  catCounter = 0;

  for (int i=0; i<cat.length; i++) {
    cat[i] = loadImage( i + ".png");
  }
}

void draw() {
  background(255);

  image(cat[catCounter], mouseX, mouseY);

  if (frameCount % 5 == 0) {
    catCounter++;
    catCounter = catCounter % cat.length;  //don't fall off the end of the array
  }
}