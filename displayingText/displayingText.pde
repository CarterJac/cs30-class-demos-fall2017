//displaying text
String myName;

void setup() {
  size(800, 800);
  myName = "Schellenberg";  //note the double quotes for Strings!
}

void draw() {
  background(0);
  
  fill(255);
  textSize(32);
  textAlign(CENTER);
  text(myName, mouseX, mouseY);
}