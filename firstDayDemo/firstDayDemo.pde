size(600, 600);

int sizeOfEllipse = 600;
int numberOfCircles = 5;

while (numberOfCircles > 0) {
  fill(random(0, 255), random(0, 255), random(0, 255));
  ellipse(width/2, height/2, sizeOfEllipse, sizeOfEllipse);
  numberOfCircles = numberOfCircles - 1;
  sizeOfEllipse = sizeOfEllipse - 100;
}