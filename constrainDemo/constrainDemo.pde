
void setup() {
  size(800, 800);
}

void draw() {
  background(255);
  fill(0);
  drawBall();
}

void drawBall() {
  //using the shortcut method (constrain)
  
  float ellipseSize = constrain(mouseY, 100, 400);
  ellipse(mouseX, mouseY, ellipseSize, ellipseSize);
  
  //the long way....
  
  //if (mouseY < 100) {
  //  ellipse(mouseX, mouseY, 100, 100);
  //}
  //else if (mouseY > 400) {
  //  ellipse(mouseX, mouseY, 400, 400);
  //}
  //else {
  //  ellipse(mouseX, mouseY, mouseY, mouseY);
  //}
}