//adjusting thickness of the line based on speed of mouse (horizontally)

void setup() {
  size(800, 800);
  background(255);
}

void draw() {
  stroke(0);
  
  float lineWidth = abs(mouseX - pmouseX);
  strokeWeight(lineWidth);
  line(pmouseX, pmouseY, mouseX, mouseY);
}