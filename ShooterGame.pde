int headHeight = 100;
int headWidth = 100;
int headX = 400;
int headY = 200;
int Width = 1000; 
int Height = 750;
int i = 0;

void head (int headXX, int headYY){
  noStroke
  fill (0);
  ellipse (headXX, headYY, headWidth, headHeight);
  rect(headXX - 15, headYY, 30, 350);
  rect(headXX - 100 , headYY + 100, 200, 25);
}




void setup() {
  size(1000, 750);
  background(78);
  head(400,200);
}

void draw(){
  size(1000, 750);
  background(78);
  head(headX,headY);
  //scope
  
  stroke(255, 0, 0);
  noFill();
  for (int i = 0; i < 7; i ++){
    ellipse(mouseX,mouseY, 150 - i, 150 - i);
  }
  
  //noStroke();
  //fill(0);
  rect(mouseX - 1 ,mouseY - 75 , 4, 150);
  rect(mouseX - 75 ,mouseY - 1, 150, 4);

  if (mousePressed && mouseX < headX + .5 * headWidth && mouseX > headX - .5 * headWidth && mouseY < headY + .5 * headHeight && mouseY > headY - .5 * headHeight) {
    println("you shot him");
    headX = int(random(0, Width));
    headY = int(random(0, Height));
  }

}  
