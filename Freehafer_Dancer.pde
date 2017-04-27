float leftarmx = 200;
float leftarmy = 300;
float rightarmx = 300;
float rightarmy = 300;
float leftlegx = 200;
float rightlegx = 300;

boolean dance;

void setup() {
  size(500,500);
}

void draw() {
  background(0);
  ellipseMode(CENTER);
  stroke(255);
  strokeWeight(8);
  fill(0);
  
  // head
  ellipse(250,150,100,100);
  
  // body
  line(250,200,250,350);
  
  // left arm
  leftArm();
  line(250,250,leftarmx,leftarmy);
  
  // right arm
  rightArm();
  line(250,250,rightarmx,rightarmy);
  
  // left leg
  leftLeg();
  line(250,350,leftlegx,400);
  
  // right leg
  rightLeg();
  line(250,350,rightlegx,400);
}

void leftArm() {
  if (dance == true) {
    leftarmx = random(150,250);
    leftarmy = random(150,350);
  }
}

void rightArm() {
  if (dance == true) {
    rightarmx = random(250,350);
    rightarmy = random(150,350);
  }
}

void leftLeg() {
  if (dance == true) {
    leftlegx = random(150,250);
  }
}

void rightLeg() {
  if (dance == true) {
    rightlegx = random(250,350);
  }
}

void mousePressed() {
  dance = true;
}

void mouseReleased() {
  dance = false;
}
