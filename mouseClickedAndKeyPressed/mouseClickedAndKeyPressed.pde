// Learning Processing
// Daniel Shiffman
// http://www.learningprocessing.com

// Example 3-5: mousePressed and keyPressed
void setup() {
  size(800, 800);
  background(255);
}

void draw() {
  // Nothing happens in draw() in this example!
}

// Whenever a user clicks the mouse the code written inside mousePressed() is executed.
void mousePressed() {
  stroke(0);
  fill(175);

  if (mouseButton == LEFT) {
    rectMode(CENTER);
    rect(mouseX, mouseY, 16, 16);
  } else if (mouseButton == RIGHT) {
    ellipseMode(CENTER);
    ellipse(mouseX, mouseY, 16, 16);
  }
}

// Whenever a user presses a key the code written inside keyPressed() is executed.
void keyPressed() {
  if (key == 'w' || key == 'W') {
    background(255);
  }
  else if (key == 'b' || key == 'B') {
    background(0);
  }
}