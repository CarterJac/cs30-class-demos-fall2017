float theta;

void setup() {
  size(800, 800);
  theta = 0;
}

void draw() {
  background(255);
  
  //speedometer
  fill(255, 0, 0);
  translate(400, 300); //moving the entire coordinate plane
  rotate(theta);
  //rectMode(CENTER);
  noStroke();
  rect(0, -15, 200, 30);
  
  //move the speedometer
  theta += 0.01;
}