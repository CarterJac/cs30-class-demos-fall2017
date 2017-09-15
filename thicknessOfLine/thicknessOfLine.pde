//adjusting thickness of the line based on speed of mouse (horizontally)

float maxThickness;

void setup() {
  size(800, 800);
  background(255);
  maxThickness = 15;
}

void draw() {
  stroke(0);
  
  float lineWidth = abs(mouseX - pmouseX);
  if (lineWidth > maxThickness) {
    lineWidth = maxThickness;
  }
  
  strokeWeight(lineWidth);
  line(pmouseX, pmouseY, mouseX, mouseY);
}