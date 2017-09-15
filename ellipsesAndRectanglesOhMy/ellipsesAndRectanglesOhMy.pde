//rectangles when mouse is on the left -- gray
//ellipses when mouse is on the right -- colorful

float r;
float g;
float b;
float a;

float diam;
float x;
float y;

void setup() {
  size(800, 800);
  background(255);
  smooth();
}

void draw() {
  pickRandomValues();
  if (mouseX > width/2) {
    drawEllipse();
  }
  else {
    drawRectangle();
  }
}

void pickRandomValues() {
  // Each time through draw(), new random numbers are picked for a new ellipse.
  r = random(255);
  g = random(255);
  b = random(255);
  a = random(255);
  diam = random(20);
  y = random(height);
}

void drawRectangle() {
  // Use values to draw an ellipse
  noStroke();
  fill(r, r, r, a);
  
  x = random(0, width/2);
  rect(x, y, diam, diam);
}

void drawEllipse() {
  // Use values to draw an ellipse
  noStroke();
  fill(r, g, b, a);
  
  x = random(width/2, width);
  ellipse(x, y, diam, diam);
}