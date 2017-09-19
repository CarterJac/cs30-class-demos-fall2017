//rotated motion for Carter
//Sept 19, 2017

float theta;
float speedometerX, speedometerY;

void setup() {
  size(800, 800);
  theta = PI;
  speedometerX = 400;
  speedometerY = 100;
}

void draw() {
  background(255);
  
  fill(0);
  translate(speedometerX, speedometerY);
  rotate(theta);
  rect(0, 0, 100, 10);
  
  
  theta += 0.01;
}