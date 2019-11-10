color buttonColor = color (10, 50, 105);
color fontColor = color(10, 100, 210);
color backGround = color(224, 238, 238);
color darkBlock = color(25, 25, 112);
color fontcolor = color(0, 0, 250);
PFont f ;
PFont levelfont ;

int [][]gameButtons; 
int [][]menuButtons;
int [][]levelButtons;
int [][]rulesButtons;
int [][]replayButtons;
int [][]nextLvlButtons;
int [][]menuBtns;

boolean overBox = false;
boolean locked = false;
float xOffset = 0.0; 
float yOffset = 0.0;
boolean overValley;

int gridXstart = 200; 
int gridXend = 530; 
int gridYstart = 90; 
int gridYend = 100;
int gridArea = 0;

int numGameButtons = 9; 
int numMenuButtons = 2;
int numMenuBtns = 2;
int numLevelButtons = 3;
int numRulesButtons = 1;
int numReplayButtons= 3;
int numNextLvlButton= 1;
//For moving blocks
boolean tfx = false;
int tfx1 = 0;
int tfy1 = 0;
int tfx2 = 0;
int tfy2 = 0;
int lfx1 = 0;
int lfy1 = 0;
int lfx2 = 0;
int lfy2 = 0;
int rfx1 = 0;
int rfy1 = 0;
int ifx1 = 0;
int ify1 = 0;
int sqrfx1 = 0;
int sqrfy1 = 0;
int vfx1 = 0;
int vfy1 = 0;
int invertLfx1 = 0;
int invertLfy1 = 0;
int invertLfx2 = 0;
int invertLfy2 = 0;
int lngLfx1 = 0;
int lngLfy1 = 0;
int lngLfx2 = 0;
int lngLfy2 = 0;
int leftLfx1 = 0;
int leftLfy1 = 0;
int leftLfx2 = 0;
int leftLfy2 = 0;

//For Game Screens
int level;
int valleyHeight=150;
int valleyWidth=150;
int valleyX=250;
int valleyY=350;
int VW;
int VH;
int VW1;
int VH1;
int screenNum = 0; 
int areaOfValley;
float cliffWidth=width;
float cliffHeight= 350;
PImage img;
PImage img1;
PImage skyImg;
PImage instructionImg;
boolean blockesPlaced = false;

//Shapes
int [][]gameTblock;
int [][]gameLblock;
int [][]gameRblock;
int [][]gameIblock;
int [][]gameSqrblock;
int [][]gameVblock;
int [][]gameInvertLblock;
int [][]gameLngLblock;
int [][]gameLeftLblock;
int Tshape = 0;
int Lshape = 0;
int Rshape = 0;
int Ishape = 0;
int Sqrshape = 0;
int Vshape = 0;
int InvertLshape = 0;
int LngLshape = 0;
int LeftLshape = 0;
int numgameTblock = 2;
int numgameLblock = 2;
int numgameRblock = 1;
int numgameIblock = 1;
int numgameSqrblock = 1;
int numgameVblock =1;
int numgameInvertLblock = 2;
int numgameLngLblock = 2;
int numgameLeftLblock = 2;
int areaOfTShape;
int areaOfLShape;
int areaOfRShape;
int areaOfIShape;
int areaOfSqrShape;
int areaOfSqrshape;
int areaOfVShape ;
int areaOfInvertLShape;
int areaOfLngLShape;
int totalShapeArea;
int areaOfLeftLShape;
boolean overTblock = false;
boolean overLblock = false;
boolean overRblock = false;
boolean overIblock = false;
boolean overSqrblock=false;
boolean overVblock=false;
boolean overInvertLblock=false;
boolean overLngLblock=false;
boolean overLeftLblock=false;

//Initialising classes
Shapes s1 = new Shapes();
int i = 1;
Human h1 = new Human();

///timer
int begin; 
int duration;
int time;
//Score
int score;
int highScore;
String [] hScore;


void setup() {
  size(700, 500);
  reset();
}
/////////////////////////////////////////////////////////////////////////////////////////////////////////////
void draw() {
  
  if (screenNum == 0) { //main page
    reset();
    background(backGround);
    image(skyImg, 0, 0, width, height);
    image(img, 0, 200, width, cliffHeight);
    
    drawMenu();
  } else if (screenNum == 1 ) { //Levels Screen
    drawLevels();
  } else if (screenNum == 2) {  //rules Screen
    drawRulesScreen();
  } else if (screenNum == 3) {  //gameScreen
    drawGame();
  } else if (screenNum == 4) {  //game over screen
    gameOverScreen();
  } else if (screenNum == 5) {  //game win screen
    winScreen();
  } else if (screenNum == 6) {  //end of game screen
    endOfGameScreen();
  }
}

////////////////////////////////////////////////////////////////////////////////////////////////////////////
void mousePressed() {

  if (screenNum == 0) {
     // Check if the start game button is pressed
    if (overButton(menuButtons[0])) 
      screenNum = 1;                                              // goes to level 1
    // Check if the Instructin button is pressed
    if (overButton(menuButtons[1]))
      screenNum = 2;                                               // gives the Instructions of the page
  
  } else if (screenNum == 1 ) {                                    //choose The level screen
    if (overButton(levelButtons[0]))                               //level 1
      level = 1;
      screenNum = 3;  
    if (overButton(levelButtons[1]))                               //level 2
      level = 2;
      screenNum = 3; 
    if (overButton(levelButtons[2]))                                //level 3
      level = 3;
      screenNum = 3; 
    /*if (overButton(levelButtons[3]))                              //level 4
      level = 4;
      screenNum = 3; */
    //play game btn
  } else if (screenNum == 2) {                                       // Instructions Screen
    if (overButton(rulesButtons[0]))
      screenNum = 0;
  } else if (screenNum == 3) {                                       //Game page
    if (overButton(menuBtns[0])) {
      reset();
      screenNum = 0;
    }
    if (overButton(replayButtons[1])  ) {
      reset();
      screenNum = 3;
    }
  } else if (screenNum == 4) {              //game over screen
    if (overButton(replayButtons[0])  )
      reset();
      screenNum = 3;
  } else if (screenNum == 5) {              //game WIN screen
     if (overButton(nextLvlButtons[0]))
      if (level<3) {
        reset();
        level = level+1;
        screenNum = 3;
      } else {
        screenNum = 6;
      }
      if(overButton(replayButtons[2]))
        reset();
        screenNum = 3;
        
  }else if (screenNum == 6) {  
    if (overButton(menuBtns[1]))
      reset();
      screenNum = 0;
  }
  pressedShapes();
}

void mouseDragged() {
  draggingShapes();
}

void mouseReleased() {
  locked = false;
  getPositionOfBlock();
  
}

///////////////////////RESET/////////////////////////////////////////////////////////////////
void reset() {

  img = loadImage("clf0.png");      // Loading Images
  img1 = loadImage("clf1.png"); 
  skyImg = loadImage("sccpre.cat-sky-png-400722.png");
  instructionImg= loadImage("instructions.png");

  f = createFont("Times New Roman", 18, true);                    //two font types
  levelfont = createFont("Arial Rounded MT Bold", 100, true);
  i=1;
  h1.resetHuman();
  stroke(255);                                                    // Set line drawing color to white
  setBtns();

  begin = millis();                                               //setting the timer
  time = duration = 20;
  highScore=0;                                                    //high Score

  setBlocksPosition();
  //getHighScore();
  
  
}

///////////////////////////MENU//////////////////////////////////////////////////////////////////
void drawMenu() {

  textAlign(CENTER, CENTER);
  textSize(40);
  text("CROSS THE BRIDGE", 350, 150);
  drawMenuButtons();
}

///////////////////////////Menu Buttons//////////////////////////////////////////////////////////
void drawMenuButtons() {
  textFont(f, 18); //selecting font
  fill(buttonColor);

  for (int i = 0; i < numMenuButtons; i++) {
    rect(menuButtons[i][0], menuButtons[i][1], menuButtons[i][2], menuButtons[i][3], menuButtons[i][4]);
  }

  fill(fontColor);
  textAlign(CENTER, CENTER);
  textSize(40);
  text("Start Game", menuButtons[0][0], menuButtons[0][1], menuButtons[0][2], menuButtons[0][3]);
  text("Instructions", menuButtons[1][0], menuButtons[1][1], menuButtons[1][2], menuButtons[1][3]);
  // mousePosition();
}

//////////////////////////////////////////////////////////////////
// Draws the Level Selection page
void drawLevels() {
  
  background(backGround);
  image(skyImg, 0, 0, width, height);
  image(img, 0, 200, width, cliffHeight);
  
  textFont(f, 30);
  textSize(40);
  textAlign(CENTER, CENTER);
  fill(fontColor);
  text("Choose a Level", 350, 125);

  textFont(levelfont, 25);
  textAlign(CENTER, CENTER);  
  for (int i = 0; i < numLevelButtons; i++) { 
    fill(buttonColor);
    rect(levelButtons[i][0], levelButtons[i][1], levelButtons[i][2], levelButtons[i][3], levelButtons[i][4]);
    fill(fontColor);
    text("Level " + (i+1), levelButtons[i][0], levelButtons[i][1], levelButtons[i][2], levelButtons[i][3]);
  }
  
}

///////////////////////////////////////////////////////////////////////////////////////////////////
// Returns true if the mouse is over buttonNumber. Returns false otherwise. dimensions must be an array of size 4.
// dimensions[0] = x-coordinate, dimensions[1] = y-coordinate, dimensions[2] = width, dimensions[3] = height
//Referance
boolean overButton(int dimensions[]) {
  if (mouseX >= dimensions[0] && mouseX <= dimensions[0] + dimensions[2] && 
    mouseY >= dimensions[1] && mouseY <= dimensions[1] + dimensions[3]) 
    return true;
  else 
  return false;
}

///////////////////// Mouse position///////////////////////////////////////////////////////////
void mousePosition() {
  fill(fontColor);
  textSize(20);
  text("x: "+mouseX+" y: "+mouseY, 100, 15);
}
////////////////////////////////////////////////////////////////////////////////////////////////////////////
void setBtns() {

  // game buttons
  gameButtons = new int[numGameButtons][5];
  menuButtons = new int[numMenuButtons][5];
  levelButtons = new int[numLevelButtons][5];
  rulesButtons = new int[numRulesButtons][5];
  replayButtons = new int [numReplayButtons][5];
  nextLvlButtons = new int [numNextLvlButton][5];
  menuBtns = new int [numMenuBtns][5];
  // New Game button
  gameButtons[0][0] = gridXstart;// x loc
  gameButtons[0][1] = gridYend + 5 ;// y loc
  gameButtons[0][2] = 300;// width
  gameButtons[0][3] = 80;
  gameButtons[0][4] = 7;
  // Instructions button
  gameButtons[1][0] = gridXstart;// x loc
  gameButtons[1][1] = gameButtons[0][1] + 200;// y loc
  gameButtons[1][2] = 300;// width
  gameButtons[1][3] = 80;// Height
  gameButtons[1][4] = 7;
  // Menu Buttons

  // New game Button   
  menuButtons[0][0] = gridXstart;// x loc
  menuButtons[0][1] = gridYend +150 ;// y loc
  menuButtons[0][2] = 300;// width
  menuButtons[0][3] = 80;  
  menuButtons[0][4] = 7;
  // Start Game
  menuButtons[1][0] = gridXstart;// x loc
  menuButtons[1][1] = menuButtons[0][1] + 100;// y loc
  menuButtons[1][2] = 300;// width
  menuButtons[1][3] = 80;// Height
  menuButtons[1][4] = 7;
  //menu btn in game page
  menuBtns[0][0] = 615;// x loc
  menuBtns[0][1] = 462;// y loc
  menuBtns[0][2] = 80;// width
  menuBtns[0][3] = 25;// Height
  menuBtns[0][4] = 7;
   //menu btn in end of game page
  menuBtns[1][0] = 350;// x loc
  menuBtns[1][1] = 400;// y loc
  menuBtns[1][2] = 80;// width
  menuBtns[1][3] = 25;// Height
  menuBtns[1][4] = 7;

  // Level Buttons

  levelButtons[0][0] = 90;
  levelButtons[0][1] = 210;
  levelButtons[0][2] = 200;
  levelButtons[0][3] = 50;
  levelButtons[0][4] = 7;

  levelButtons[1][0] = 400;
  levelButtons[1][1] = levelButtons[0][1];
  levelButtons[1][2] = levelButtons[0][2];
  levelButtons[1][3] = levelButtons[0][3];
  levelButtons[1][4] = 7;

  levelButtons[2][0] = levelButtons[0][0]+150;
  levelButtons[2][1] = levelButtons[0][1] + 100;
  levelButtons[2][2] = levelButtons[0][2];
  levelButtons[2][3] = levelButtons[0][3];
  levelButtons[2][4] = 7;

  /*levelButtons[3][0] = levelButtons[1][0];
  levelButtons[3][1] = levelButtons[0][1] + 100;
  levelButtons[3][2] = levelButtons[0][2];
  levelButtons[3][3] = levelButtons[0][3];
  levelButtons[3][4] = 7;*/


  //rule buttons
  rulesButtons[0][0] = 250;
  rulesButtons[0][1] = 400;
  rulesButtons[0][2] = 200;
  rulesButtons[0][3] = 50;
  rulesButtons[0][4] = 7;

  //replay buttons in game over
  replayButtons[0][0] = (width/2)-50;
  replayButtons[0][1] = (height/2)+50;
  replayButtons[0][2] = 100;
  replayButtons[0][3] = 50;
  replayButtons[0][4] = 7;
  //replay buttons in game 
  replayButtons[1][0] = 615;
  replayButtons[1][1] = 425;
  replayButtons[1][2] = 80;
  replayButtons[1][3] = 25;
  replayButtons[1][4] = 7;
  //replay buttons in winscreen 
  replayButtons[2][0] = (width/2)-75;
  replayButtons[2][1] = (height/2)+50;
  replayButtons[2][2] = 100;
  replayButtons[2][3] = 50;
  replayButtons[2][4] = 7;

  //next Level buttons
  nextLvlButtons[0][0] = (width/2)-75;
  nextLvlButtons[0][1] = (height/2)+125;
  nextLvlButtons[0][2] = 100;
  nextLvlButtons[0][3] = 50;
  nextLvlButtons[0][4] = 7;
}
