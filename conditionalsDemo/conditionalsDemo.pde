
void setup() {
  size(800, 800);
}

void draw() {
  
  if (mouseX < width/4) {  //1st (left) quarter
    background(255);
  }
  else if (mouseX < width/2) { //2nd quarter
    background(0,255,0);
  }
  else if (mouseX < 3*width/4) { //3rd quarter
    background(255, 0, 255);
  }
  else {  //right quarter
    background(0);
  }
}