//state variable demo

int x, y, size, speed;
int state;

void setup() {
  size(600, 600);
  
  x = 0;
  y = 0;
  speed = 10;
  size = 50;
  state = 1;  //moving right
}


void draw() {
  background(255);
  moveSquare();
  displaySquare();
}

void moveSquare() {
  //state 1 -> right
  if (state == 1) {
    x += speed;
    if (x >= width - size) {
      x = width - (size+1);
      state = 2;
    }
  }
  
  //state 2 -> down
  if (state == 2) {
    y += speed;
    if (y > height - size) {
      y = height - (size+1);
      state = 3;
    }
  }
  
  //state 3 -> left
  if (state == 3) {
    x -= speed;
    if (x < 0) {
      x = 0;
      state = 4;
    }
  }
  
  //state 4 -> up
  if (state == 4) {
    y -= speed;
    if (y < 0) {
      y = 0;
      state = 1;
    }
  }
}

void displaySquare() {
  fill(175);
  rect(x, y, size, size);
}