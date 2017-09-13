//global variables
boolean isItHotOut;

void setup() {
  size(800, 800);
  
  isItHotOut = true;
}

void draw() {
  background(0);
  
  showBox();
}

void showBox() {
  if (isItHotOut) {
    fill(255, 0, 0);
  } 
  else {
    fill(0, 0, 255);
  }
  
  rectMode(CENTER);
  rect(mouseX, mouseY, 200, 200);
}

void mouseClicked() {
  //runs automatically at the end of the draw loop if the mouse was clicked this frame
  
  //the nice shortcutty way
  isItHotOut = !isItHotOut;
  
  //the long way to do it...
  //if (isItHotOut == true) {
  //  isItHotOut = false;
  //}
  //else {
  //  isItHotOut = true;
  //}
}