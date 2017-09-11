//global variables
PImage tuxxy;

void setup() {
  size(800, 800);

  tuxxy = loadImage("tux.png");
  imageMode(CENTER);
}

void draw() {
  background(255);
  image(tuxxy, mouseX, mouseY, tuxxy.width*0.10, tuxxy.height*0.10);

  noStroke();
  fill(255, 0, 0, 100);
  ellipse(width/2, height/2, 500, 800);
}