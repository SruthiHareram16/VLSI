class Human {
  
  float headX;
  float headY;
  float hipX;
  float hipY;
  float len;
  float torsolength;
  float a1, a2, a3, a4;
  float speed;

  void resetHuman() {
    headX=30;
    headY=270;
    len=20;
    torsolength=35;
  }

  public void drawMan(int i) {
   if (i == 1) {
      drawHuman();
    } else if (i == 2) {
      drawHuman();
      speed+=0.10;
      headX+=4;
    }
  }

  public void drawHuman() {

    //fullScreen();
    // background(170);
    stroke(2);
    hipX=headX;
    hipY=headY+torsolength;
    line (headX, headY, hipX, hipY);
    line (headX, headY+15, headX+35, headY);
    line (headX, headY+15, headX-35, headY);
    ellipse(headX, headY, 20, 20);
    a1=sin(speed);
    a2=sin(speed-0.4)-0.3;
    a3=sin(PI+speed);
    a4=sin(PI+speed-0.4)-0.3;
    float leftKneeX=hipX+sin(a1)*len;
    float leftKneeeY=hipY+cos(a1)*len;
    float rightKneeX=hipX+sin(a3)*len;
    float rightKneeY=hipY+cos(a3)*len;
    float leftAnkleX=leftKneeX+sin(a2)*len;
    float leftAnkleY=leftKneeeY+cos(a2)*len;
    float rightAnkleX=rightKneeX+sin(a4)*len;
    float rightAnkleY=rightKneeY+cos(a4)*len;
    line (hipX, hipY, leftKneeX, leftKneeeY);
    line (leftKneeX, leftKneeeY, leftAnkleX, leftAnkleY);
    line (hipX, hipY, rightKneeX, rightKneeY);
    line (rightKneeX, rightKneeY, rightAnkleX, rightAnkleY);
  }
}
