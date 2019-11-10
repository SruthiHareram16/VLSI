void drawRulesScreen() { //<>//
  background(backGround);
  image(skyImg, 0, 0, width, height);
  image(img, 0, 200, width, cliffHeight);
  image(img1, 0, 200, width, cliffHeight);
  rules();
  textFont(f, 18);
  fill(buttonColor);
  rect(rulesButtons[0][0], rulesButtons[0][1], rulesButtons[0][2], rulesButtons[0][3], rulesButtons[0][4]);
  fill(fontColor);
  text("MENU", rulesButtons[0][0], rulesButtons[0][1], rulesButtons[0][2], rulesButtons[0][3]);
}
void drawGame() {

  background(backGround);
  image(skyImg, 0, 0, width, height);
  drawMargin();
  mousePosition();
  drawCliff();
  h1.drawMan(i);
  drawMenuButton();
  drawReset();
  drawValley();

  s1.drawShapes();
  //areaCalculation();
  // timer();
  mousePosition();
  fill(20, 110, 255, 150);
  textSize(70);
  textAlign(CENTER, CENTER);
  text("level  "+ level, width/2, (height/2)-50);
}
void gameOverScreen() {

  background(backGround);
  textSize(40);
  text("GAME OVER", width/2, height/2);

  fill(159, 198, 245);
  rect(replayButtons[0][0], replayButtons[0][1], replayButtons[0][2], replayButtons[0][3], replayButtons[0][4]);
  textAlign(CENTER, CENTER);
  textSize(12);
  fill(0);
  text("REPLAY", replayButtons[0][0], replayButtons[0][1], replayButtons[0][2], replayButtons[0][3]);
}
void winScreen() {

  background(backGround);
  image(skyImg, 0, 0, width, height);
  image(img, 0, 260, width, cliffHeight);
  image(img1, 0, 260, width, cliffHeight);
  h1.drawMan(2);

  textSize(40);
  score=(time)*10;
  text("YOU WIN", 300, 150);
  text("SCORE :"+ score, 300, 200);
  //text("HIGH SCORE :"+ highScore, 300, 250);

  fill(159, 198, 245);
  rect(nextLvlButtons[0][0], nextLvlButtons[0][1], nextLvlButtons[0][2], nextLvlButtons[0][3], nextLvlButtons[0][4]);
  rect(replayButtons[2][0], replayButtons[2][1], replayButtons[2][2], replayButtons[2][3], replayButtons[2][4]);
  textAlign(CENTER, CENTER);
  textSize(12);
  fill(0);
  text("NEXT LEVEL", nextLvlButtons[0][0], nextLvlButtons[0][1], nextLvlButtons[0][2], nextLvlButtons[0][3]);
  text("REPLAY", replayButtons[2][0], replayButtons[2][1], replayButtons[2][2], replayButtons[2][3]);
  
}
void endOfGameScreen() {
  background(backGround);
  image(skyImg, 0, 0, width, height);
  image(img, 0, 260, width, cliffHeight);
  image(img1, 0, 260, width, cliffHeight);
  h1.drawMan(2);
  textSize(40);
  score=(time)*10;
  text("YOU WIN", 300, 150);
  text("END OF GAME", 300, 200);
  text("SCORE :"+ score, 300, 250);

  //text("HIGH SCORE :"+ highScore, 300, 300);
  drawMenuButton();
}
//////////////////////////////////////////TIMER/////////////////////////////////////////////////////////////
void timer() {

  textSize(12);
  fill(10, 100, 210);
  if (time > 0)  time = duration - (millis() - begin)/1000;
  text("TIME LIMIT : "+time, 650, 25);
  if (time == 0) {
    screenNum =4;
  }
}
//////////////////////////////////////HIGH SCORE/////////////////////////////////////////////////////////////
void getHighScore() {

  String lines[] = loadStrings("highScore.txt");

  for (int i = 0; i < lines.length; i++)
  {
    highScore = parseInt(lines[i]);
  }
}
///////////////////////////////Methods for Game Screens////////////////////////////////////////////////////
void drawMargin() {
  fill(205, 247, 247, 200);
  rect(0, 0, width, 50, 100);
  textSize(40);
  textFont(f, 30);
  fill(10, 100, 210);
  text("CROSS THE BRIDGE", 350, 25);
}
void drawMenuButton() {

  fill(205, 247, 247, 500);
  noStroke();
 
    rect(menuBtns[0][0], menuBtns[0][1], menuBtns[0][2], menuBtns[0][3], menuBtns[0][4] );
    textSize(12);
    fill(10, 100, 210);
    textAlign(CENTER, CENTER);  
    text("MainMenu", 655, 472);
 }
void drawReset() {

  fill(205, 247, 247, 500);
  noStroke();
  rect(replayButtons[1][0], replayButtons[1][1], replayButtons[1][2], replayButtons[1][3], replayButtons[1][4]);
  textSize(12);
  fill(10, 100, 210);
  textAlign(CENTER, CENTER); 
  text("RESET", replayButtons[1][0], replayButtons[1][1], replayButtons[1][2], replayButtons[1][3]);
}
void drawCliff() {
  fill(125, 208, 212);
  // rect(0, 350, width, cliffHeight, 10);

  image(img, 0, 260, width, cliffHeight);
  image(img1, 0, 260, width, cliffHeight);
}
void drawValley() {

  stroke(2);
  fill(169, 241, 245, 500);

  if (level == 1) {
    rect(valleyX, valleyY, valleyWidth, valleyHeight);
    VW =valleyWidth;
    VH =  valleyHeight;
  }
  if (level == 2) {
    rect(valleyX, valleyY, valleyWidth+50, valleyHeight);
    VW =valleyWidth+50;
    VH =  valleyHeight;
  }
  if (level == 3) {
    rect(valleyX-100, valleyY, valleyWidth, valleyHeight); 
    rect(valleyX+100, valleyY, valleyWidth-50, valleyHeight);
    VW =valleyWidth+50;
    VH =  valleyHeight;
    VW1=valleyWidth-50;
    VH1 =valleyHeight ;
  }
  if (level == 4) {
    rect(valleyX, valleyY, valleyWidth+150, valleyHeight+50);
    VW =valleyWidth+150;
    VH =  valleyHeight+50;
  }

  areaOfValley= (VW * VH)+(VW1+VH1);
}

///////////////////////////////////////////////////////////////////////////////////////////////////////////
void areaCalculation() {
  if (blockesPlaced) {
    print("in");
    if (level==3) {
      screenNum = 6;
    }
    println("areaOfValley" +areaOfValley);
    println("s1.totalAreaOfShapes()" +s1.totalAreaOfShapes());
    if (areaOfValley == s1.totalAreaOfShapes()) {
      screenNum = 5;
    }
  }
}


////////////////////////////////////////////////////////////////////////////////////////////////////////////
void drawGrid() {
  //strokeWeight(2);

  noStroke();
  int x=0;
  int y=0;
  while (y<1080) {
    while (x<1920) {
      rect(x, y, 50, 50);
      x=x+50;
    }
    y=y+50;
    x=0;
  }
}
////////////////////////////////////////////////////////////////////////////////////////////////////////////////
void rules() {
  mousePosition();
  fill(#D6F7FF);
  rect(50, 50, width-100, height-100);
  image(img, 0, 200, width, cliffHeight);
  image(instructionImg, 0, 0, width, height);
}
