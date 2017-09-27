PImage error;
PImage back;
PImage oop;
PImage blue;
boolean press = false;
boolean done = false;
int num_error = 500;

void setup() {
fullScreen();
error = loadImage("error.png");
back = loadImage("back.png");
oop = loadImage("oop.png");
blue = loadImage("blue.jpg");
image(back,0,0);
image(error, width/2, height/2);
}
void draw() {
  if (press == true) {
    if (num_error <= 1) {
      image(blue, 0, 0);
      done = true;
    }
    else {
    image(oop, random(0, 1600), random(0, 900));
    num_error = num_error - 1;
    }
  }
  if ((press == false)&&(done == false)){
    image(error, width/2, height/2);
  button();
  }

}

void mousePressed() {
  press = true;
  }
  
void button(){
  if (mouseX > 876 && mouseX < 1158 && mouseY > 606 && mouseY < 642){
  stroke(157,255,246, 75);
  fill(157,255,246, 75);
  rect(876,606,282,36);
  }
}