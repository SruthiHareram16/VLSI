class Shapes {

  
  public void  drawShapes() {
    setBlocks();
    drawBlocks();
  }
  private int totalAreaOfShapes() {  //area of the block
    println();
    if (level==1) {
      totalShapeArea=areaOfTShape+areaOfLShape+areaOfRShape;
    }
    if (level==2) {
      totalShapeArea=areaOfTShape+areaOfLShape+areaOfRShape+areaOfIShape;
    }
    //if(level==3){totalShapeArea=areaOfTShape+areaOfLShape+areaOfRShape;}
    // if(level==4){totalShapeArea=areaOfTShape+areaOfLShape+areaOfRShape;}

    return totalShapeArea;
  }
}

/*void Shape() {
 setBlocks();
 drawBlocks();
 //mousePosition();
 }*/
//////////////////////////////////////////////////////////////////////////////////////////

//////////////////////////////////////////////////////////////////////////////////////////
void drawBlocks() {
  areaOfTShape=0;
  areaOfLShape=0;
  areaOfRShape=0;
  areaOfIShape=0;
  areaOfSqrshape=0;
  areaOfVShape =0;
  areaOfInvertLShape=0;
  areaOfLeftLShape=0;
  areaOfLngLShape=0;

  if (level ==1) {
    drawTBlock();
    drawLBlock();
    drawRHBlock();
  } else if (level ==2) {
    drawTBlock();
    drawLBlock();
    drawRHBlock();
    drawIBlock();
  } else if (level == 3) {
    drawSqrBlock();
    drawVBlock();
    drawInvertLBlock();
    drawLeftLBlock();
    drawRHBlock();
    drawLngLBlock();
  }
}
///////////////////////////////////////////////////////////////////////////////////////////

void drawTBlock() {
  //areaOfTShape=0;
  for (int i = 0; i < numgameTblock; i++) {
    fill(87, 193, 255);
    rect(gameTblock[i][0], gameTblock[i][1], gameTblock[i][2], gameTblock[i][3], gameTblock[i][4]);
    println("areaOfTShape :" +areaOfTShape);
    areaOfTShape = areaOfTShape + (gameTblock[i][2]* gameTblock[i][3]);
  }
}
void drawLBlock() {
  areaOfLShape=0;
  for (int i = 0; i < numgameLblock; i++) {
    fill(132, 87, 255);
    rect(gameLblock[i][0], gameLblock[i][1], gameLblock[i][2], gameLblock[i][3], gameLblock[i][4]);
    areaOfLShape=areaOfLShape+(gameLblock[i][2]* gameLblock[i][3]);
  }
}

void drawRHBlock() {
  areaOfRShape=0;
  for (int i = 0; i < numgameRblock; i++) {
    fill(202, 87, 255);
    rect(gameRblock[i][0], gameRblock[i][1], gameRblock[i][2], gameRblock[i][3], gameRblock[i][4]);
    areaOfRShape=areaOfRShape + (gameRblock[i][2]* gameRblock[i][3]);
  }
}
void drawIBlock() {
  areaOfIShape=0;
  for (int i = 0; i < numgameIblock; i++) {
    fill(#21FCF7);
    rect(gameIblock[i][0], gameIblock[i][1], gameIblock[i][2], gameIblock[i][3], gameIblock[i][4]);
    areaOfIShape=areaOfIShape + (gameIblock[i][2]* gameIblock[i][3]);
  }
}
void drawSqrBlock() {
  for (int i = 0; i < numgameSqrblock; i++) {
    fill(#21A6FC);
    stroke(2);
    rect(gameSqrblock[i][0], gameSqrblock[i][1], gameSqrblock[i][2], gameSqrblock[i][3], gameSqrblock[i][4]);
    areaOfSqrShape = areaOfSqrShape + (gameSqrblock[i][2]* gameSqrblock[i][3]);
  }
}
void drawVBlock() {
  for (int i = 0; i < numgameVblock; i++) {
    fill(#21FCF0);
    stroke(2);
    rect(gameVblock[i][0], gameVblock[i][1], gameVblock[i][2], gameVblock[i][3], gameVblock[i][4]);
    areaOfVShape = areaOfVShape + (gameVblock[i][2]* gameVblock[i][3]);
  }
}
void drawInvertLBlock() {
  for (int i = 0; i < numgameInvertLblock; i++) {
    fill(#2177FC);
    stroke(2);
    rect(gameInvertLblock[i][0], gameInvertLblock[i][1], gameInvertLblock[i][2], gameInvertLblock[i][3], gameInvertLblock[i][4]);
    areaOfInvertLShape = areaOfInvertLShape + (gameInvertLblock[i][2]* gameInvertLblock[i][3]);
  }
}
void drawLngLBlock() {
  for (int i = 0; i < numgameLngLblock; i++) {
    fill(#A021FC);
    stroke(2);
    rect(gameLngLblock[i][0], gameLngLblock[i][1], gameLngLblock[i][2], gameLngLblock[i][3], gameLngLblock[i][4]);
    areaOfLngLShape = areaOfLngLShape + (gameLngLblock[i][2]* gameLngLblock[i][3]);
  }
}
void drawLeftLBlock() {
  for (int i = 0; i < numgameLeftLblock; i++) {
    fill(#2147FC);
    stroke(2);
    rect(gameLeftLblock[i][0], gameLeftLblock[i][1], gameLeftLblock[i][2], gameLeftLblock[i][3], gameLeftLblock[i][4]);
    areaOfLeftLShape = areaOfLeftLShape + (gameLeftLblock[i][2]* gameLeftLblock[i][3]);
  }
}


////////////////////////////////////////////////////////////////////////
void setBlocks() {
  if (level==1) {
    if (overButton(gameTblock[0]) || overButton(gameTblock[1])) {
      Tshape = 1; 
      Lshape = 0;
      Rshape = 0;
      Ishape = 0;
      Sqrshape = 0;
      Vshape = 0;
      InvertLshape = 0;
      LngLshape = 0;
      LeftLshape = 0;
      overTblock = true;
    }
    if (overButton(gameLblock[0]) || overButton(gameLblock[1])) {
      Tshape = 0;
      Lshape = 1; 
      Rshape = 0;
      Ishape = 0; 
      Sqrshape = 0;
      Vshape = 0;
      InvertLshape = 0;
      LngLshape = 0;
      LeftLshape = 0;
      overLblock = true;
    }
    if (overButton(gameRblock[0])) {
      Tshape = 0;
      Lshape = 0; 
      Rshape = 1;
      Ishape = 0;
      Sqrshape = 0;
      Vshape = 0;
      InvertLshape = 0;
      LngLshape = 0;
      LeftLshape = 0;
      overRblock = true;
    }
  }
  if (level == 2) {
    if (overButton(gameTblock[0]) || overButton(gameTblock[1])) {
      Tshape = 1; 
      Lshape = 0;
      Rshape = 0;
      Ishape = 0;
      Sqrshape = 0;
      Vshape = 0;
      InvertLshape = 0;
      LngLshape = 0;
      LeftLshape = 0;
      overTblock = true;
    }
    if (overButton(gameLblock[0]) || overButton(gameLblock[1])) {
      Tshape = 0;
      Lshape = 1; 
      Rshape = 0;
      Ishape = 0; 
      Sqrshape = 0;
      Vshape = 0;
      InvertLshape = 0;
      LngLshape = 0;
      LeftLshape = 0;
      overLblock = true;
    }
    if (overButton(gameRblock[0])) {
      Tshape = 0;
      Lshape = 0; 
      Rshape = 1;
      Ishape = 0;
      Sqrshape = 0;
      Vshape = 0;
      InvertLshape = 0;
      LngLshape = 0;
      LeftLshape = 0;
      overRblock = true;
    }
    if (overButton(gameIblock[0])) {
      Tshape = 0;
      Lshape = 0; 
      Rshape = 0;
      Ishape = 1;
      Sqrshape = 0;
      Vshape = 0;
      InvertLshape = 0;
      LngLshape = 0;
      LeftLshape = 0;
      overIblock = true;
    }
  }
  if (level == 3) {
    if (overButton(gameSqrblock[0])) {
      Tshape = 0;
      Lshape = 0; 
      Rshape = 0;
      Ishape = 0;
      Sqrshape = 1;
      Vshape = 0;
      InvertLshape = 0;
      LngLshape = 0;
      LeftLshape = 0;
      overSqrblock = true;
    }
    if (overButton(gameVblock[0])) {
      Tshape = 0;
      Lshape = 0; 
      Rshape = 0;
      Ishape = 0;
      Sqrshape = 0;
      Vshape = 1;
      InvertLshape = 0;
      LngLshape = 0;
      LeftLshape = 0;
      overVblock = true;
    }
    if (overButton(gameRblock[0])) {
      Tshape = 0;
      Lshape = 0; 
      Rshape = 1;
      Ishape = 0;
      Sqrshape = 0;
      Vshape = 0;
      InvertLshape = 0;
      LngLshape = 0;
      LeftLshape = 0;
      overRblock = true;
    }
    if (overButton(gameInvertLblock[0]) || overButton(gameInvertLblock[1])) {
      Tshape = 0;
      Lshape = 0; 
      Rshape = 0;
      Ishape = 0;
      Sqrshape = 0;
      Vshape = 0;
      InvertLshape = 1;
      LngLshape = 0;
      LeftLshape = 0;
      overInvertLblock = true;
    }
    if (overButton(gameLngLblock[0]) || overButton(gameLngLblock[1])) {
      Tshape = 0;
      Lshape = 0; 
      Rshape = 0;
      Ishape = 0;
      Sqrshape = 0;
      Vshape = 0;
      InvertLshape = 0;
      LngLshape = 1;
      LeftLshape = 0;
      overLngLblock = true;
    }
    if (overButton(gameLeftLblock[0]) || overButton(gameLeftLblock[1])) {
      Tshape = 0;
      Lshape = 0; 
      Rshape = 0;
      Ishape = 0;
      Sqrshape = 0;
      Vshape = 0;
      InvertLshape = 0;
      LngLshape = 0;
      LeftLshape = 1;
      overLeftLblock = true;
    }
  }
}
///////////////////////////////////////////////////////////////////////////////////////////////
void draggingShapes() {

  //two shapes
  if (locked) {

    if ((mouseX>0 && mouseX<width ) &&  (mouseY>0 && mouseY<height) ) {

      if (Tshape == 1) {
        gameTblock[0][0] = mouseX-tfx1; 
        gameTblock[0][1] = mouseY-tfy1; 
        gameTblock[1][0] = mouseX-tfx2; 
        gameTblock[1][1] = mouseY-tfy2;

        gameTblock[0][0]-=gameTblock[0][0]%50;
        gameTblock[0][1]-=gameTblock[0][1]%50;
        gameTblock[1][0]-=gameTblock[1][0]%50;
        gameTblock[1][1]-=gameTblock[1][1]%50;
      }
      if (Lshape == 1) {
        gameLblock[0][0] = mouseX-lfx1; 
        gameLblock[0][1] = mouseY-lfy1; 
        gameLblock[1][0] = mouseX-lfx2; 
        gameLblock[1][1] = mouseY-lfy2;

        gameLblock[0][0] -= gameLblock[0][0]%50; 
        gameLblock[0][1] -= gameLblock[0][1]%50; 
        gameLblock[1][0] -= gameLblock[1][0]%50; 
        gameLblock[1][1] -= gameLblock[1][1]%50;
      }
      if (Rshape == 1) {
        gameRblock[0][0] = mouseX-rfx1; 
        gameRblock[0][1] = mouseY-rfy1;

        gameRblock[0][0] -= gameRblock[0][0]%50; 
        gameRblock[0][1] -= gameRblock[0][1]%50;
      }
      if (Ishape == 1) {
        gameIblock[0][0] = mouseX-ifx1; 
        gameIblock[0][1] = mouseY-ify1;

        gameIblock[0][0] -= gameIblock[0][0]%50; 
        gameIblock[0][1] -= gameIblock[0][1]%50;
      }
      if (Sqrshape == 1) {
        gameSqrblock[0][0] = mouseX-sqrfx1; 
        gameSqrblock[0][1] = mouseY-sqrfy1;

        gameSqrblock[0][0] -= gameSqrblock[0][0]%50; 
        gameSqrblock[0][1] -= gameSqrblock[0][1]%50;
      }
      if (Vshape == 1) {
        gameVblock[0][0] = mouseX-vfx1; 
        gameVblock[0][1] = mouseY-vfy1;

        gameVblock[0][0] -= gameVblock[0][0]%50; 
        gameVblock[0][1] -= gameVblock[0][1]%50;
      }
      if (InvertLshape == 1) {
        gameInvertLblock[0][0] = mouseX-invertLfx1; 
        gameInvertLblock[0][1] = mouseY-invertLfy1;

        gameInvertLblock[1][0] = mouseX-invertLfx2; 
        gameInvertLblock[1][1] = mouseY-invertLfy2;

        gameInvertLblock[0][0] -= gameInvertLblock[0][0]%50; 
        gameInvertLblock[0][1] -= gameInvertLblock[0][1]%50;
        gameInvertLblock[1][0] -= gameInvertLblock[1][0]%50; 
        gameInvertLblock[1][1] -= gameInvertLblock[1][1]%50;
      }
      if (LngLshape == 1) {

        gameLngLblock[0][0] = mouseX-lngLfx1; 
        gameLngLblock[0][1] = mouseY-lngLfy1;
        gameLngLblock[1][0] = mouseX-lngLfx2; 
        gameLngLblock[1][1] = mouseY-lngLfy2;

        gameLngLblock[0][0] -= gameLngLblock[0][0]%50; 
        gameLngLblock[0][1] -= gameLngLblock[0][1]%50;
        gameLngLblock[1][0] -= gameLngLblock[1][0]%50; 
        gameLngLblock[1][1] -= gameLngLblock[1][1]%50;
      }
      if (LeftLshape == 1) {
        gameLeftLblock[0][0] = mouseX-leftLfx1; 
        gameLeftLblock[0][1] = mouseY-leftLfy1;
        gameLeftLblock[1][0] = mouseX-leftLfx2; 
        gameLeftLblock[1][1] = mouseY-leftLfy2;

        gameLeftLblock[0][0] -= gameLeftLblock[0][0]%50; 
        gameLeftLblock[0][1] -= gameLeftLblock[0][1]%50;
        gameLeftLblock[1][0] -= gameLeftLblock[1][0]%50; 
        gameLeftLblock[1][1] -= gameLeftLblock[1][1]%50;
      }
    }
  }
}
//////////////////////////////////////////////////////////////////////////////////////////
void pressedShapes() {

  ///////two shapes
  if (overTblock || overLblock || overRblock || overIblock || overSqrblock || overVblock || overInvertLblock || overLngLblock || overLeftLblock) { 
    locked = true; 
    fill(255, 255, 255);
  } else {
    locked = false;
  }

  if (Tshape == 1 ) {
    println("Tshape");
    tfx1 = mouseX-gameTblock[0][0]; 
    tfy1 = mouseY-gameTblock[0][1];
    tfx2 = mouseX-gameTblock[1][0];
    tfy2 = mouseY-gameTblock[1][1];
  }
  if (Lshape == 1) {
    println("Lshape");
    lfx1 = mouseX-gameLblock[0][0]; 
    lfy1 = mouseY-gameLblock[0][1];
    lfx2 = mouseX-gameLblock[1][0];
    lfy2 = mouseY-gameLblock[1][1];
  }
  if (Rshape == 1) {
    println("Rshape");
    rfx1 = mouseX-gameRblock[0][0]; 
    rfy1 = mouseY-gameRblock[0][1];
  }
  if (Ishape == 1) {
    println("Ishape");
    ifx1 = mouseX-gameIblock[0][0]; 
    ify1 = mouseY-gameIblock[0][1];
  }
  if (Sqrshape == 1 ) {
    println("sqrshape");
    sqrfx1 = mouseX-gameSqrblock[0][0]; 
    sqrfy1 = mouseY-gameSqrblock[0][1];
  }
  if (Vshape == 1) {
    println("vshape");
    vfx1 = mouseX-gameVblock[0][0]; 
    vfy1 = mouseY-gameVblock[0][1];
  }
  if (InvertLshape == 1 ) {
    println("invertshape");
    invertLfx1 = mouseX-gameInvertLblock[0][0]; 
    invertLfy1 = mouseY-gameInvertLblock[0][1];
    invertLfx2 = mouseX-gameInvertLblock[1][0];
    invertLfy2 = mouseY-gameInvertLblock[1][1];
  }
  if (LngLshape == 1) {
    println("Lngshape");
    lngLfx1 = mouseX-gameLngLblock[0][0]; 
    lngLfy1 = mouseY-gameLngLblock[0][1];
    lngLfx2 = mouseX-gameLngLblock[1][0];
    lngLfy2 = mouseY-gameLngLblock[1][1];
  }
  if (LeftLshape == 1 ) {
    println("lefLshape");
    leftLfx1 = mouseX-gameLeftLblock[0][0]; 
    leftLfy1 = mouseY-gameLeftLblock[0][1];
    leftLfx2 = mouseX-gameLeftLblock[1][0];
    leftLfy2 = mouseY-gameLeftLblock[1][1];
  }
}
////////////////////////////////////////////////////////////////
void getPositionOfBlock() {
print("level"+level);
  if (level == 1) {
    
    if ((gameTblock[0][0] == 250 && gameTblock[0][1]==350) &&  (gameLblock[0][0] == 300 && gameLblock[0][1]==350 ) && (gameRblock[0][0] == 300 && gameRblock[0][1] == 450 )) {
      print("true");
      blockesPlaced = true;
      areaCalculation();
      //screenNum = 5;
    }
  } else if (level == 2) {
    if ((gameTblock[0][0] == 250 && gameTblock[0][1] == 350 ) &&  (gameLblock[0][0] == 300 && gameLblock[0][1] == 350) && (gameRblock[0][0] == 300 && gameRblock[0][1] == 450) 
      && (gameIblock[0][0] == 400 && gameIblock[0][1] == 350)) {
      blockesPlaced = true;
      areaCalculation();
      //screenNum = 5;
    }
  } else if (level == 3) {
    if ((gameLngLblock[0][0] == 150&& gameLngLblock[0][1]==400) &&  (gameInvertLblock[0][0] == 150 && gameInvertLblock[0][1] == 350) 
      && (gameVblock[0][0] == 250 && gameVblock[0][1] == 350) && ((gameRblock[0][0] == 350 && gameRblock[0][1]==350)|| (gameRblock[0][0] == 350 && gameRblock[0][1] == 450) ) 
      && ((gameSqrblock[0][0] == 350 && gameSqrblock[0][1] == 350 )|| (gameSqrblock[0][0] == 350 && gameSqrblock[0][1] == 400)) 
      && ((gameLeftLblock[0][0] == 350 && gameLeftLblock[0][1]==400) || (gameLeftLblock[0][0] == 350 &&gameLeftLblock[0][1]==450 )) ) {
      blockesPlaced = true;
      areaCalculation();
      //screenNum = 5;
    }
  }

}

void setBlocksPosition() {
  ///////////BLOCKS ////////////////////////////////////////////////////
  f = createFont("Times New Roman", 18, true);

  gameTblock = new int[numgameTblock][5];
  gameLblock = new int[numgameLblock][5];
  gameRblock = new int[numgameRblock][5];
  gameIblock = new int[numgameIblock][5];
  gameSqrblock = new int[numgameSqrblock][5]; 
  gameVblock = new int[numgameVblock][5];
  gameInvertLblock= new int[numgameInvertLblock][5];
  gameLngLblock= new int[numgameLngLblock][5];
  gameLeftLblock= new int[numgameLeftLblock][5];

  // Tblock
  gameTblock[0][0] = 50;// x loc
  gameTblock[0][1] = 100; //+ 5 ;// y loc
  gameTblock[0][2] = 50;// width
  gameTblock[0][3] = 150;
  gameTblock[0][4] = 7;

  gameTblock[1][0] = gameTblock[0][0]+50;// x loc
  gameTblock[1][1] = gameTblock[0][1]+50;// y loc
  gameTblock[1][2] = 50;// width
  gameTblock[1][3] = 50;// Height
  gameTblock[1][4] = 7;

  //L-Block
  gameLblock[0][0] = 250;// x loc
  gameLblock[0][1] = 100; //+ 5 ;// y loc
  gameLblock[0][2] = 100;// width
  gameLblock[0][3] = 50;
  gameLblock[0][4] = 7;

  gameLblock[1][0] = gameLblock[0][0]+50;// x loc
  gameLblock[1][1] = gameLblock[0][1]+50;// y loc
  gameLblock[1][2] = 50;// width
  gameLblock[1][3] = 50;// Height
  gameLblock[1][4] = 7;

  //R block
  gameRblock[0][0] = 430;// x loc
  gameRblock[0][1] = 100;// y loc
  gameRblock[0][2] = 100;// width
  gameRblock[0][3] = 50;// Height
  gameRblock[0][4] = 7;

  //I block
  gameIblock[0][0] = 600;// x loc
  gameIblock[0][1] = 100;// y loc
  gameIblock[0][2] = 50;// width
  gameIblock[0][3] = 150;// Height
  gameIblock[0][4] = 7;

  //V block
  gameVblock[0][0]=350;
  gameVblock[0][1]=100;
  gameVblock[0][2]=50;
  gameVblock[0][3]=100;
  gameVblock[0][4]=7;

  //SQR block
  gameSqrblock[0][0]=455;
  gameSqrblock[0][1]=200;
  gameSqrblock[0][2]=50;
  gameSqrblock[0][3]=50;
  gameSqrblock[0][4]=7;

  //InvertL block
  gameInvertLblock[0][0]=220;
  gameInvertLblock[0][1]=100;
  gameInvertLblock[0][2]=50;
  gameInvertLblock[0][3]=50;
  gameInvertLblock[0][4]=7;

  gameInvertLblock[1][0]=gameInvertLblock[0][0]+50;
  gameInvertLblock[1][1]=gameInvertLblock[0][1];
  gameInvertLblock[1][2]=50;
  gameInvertLblock[1][3]=100;
  gameInvertLblock[1][4]=7;

  //LngL block
  gameLngLblock[0][0]=50;
  gameLngLblock[0][1]=100;
  gameLngLblock[0][2]=50;
  gameLngLblock[0][3]=100;
  gameLngLblock[0][4]=7;

  gameLngLblock[1][0]=gameLngLblock[0][0];
  gameLngLblock[1][1]=gameLngLblock[0][1]+50;
  gameLngLblock[1][2]=150;
  gameLngLblock[1][3]=50;
  gameLngLblock[1][4]=7;

  //LngL block
  gameLeftLblock[0][0]=550;
  gameLeftLblock[0][1]=150;
  gameLeftLblock[0][2]=100;
  gameLeftLblock[0][3]=50;
  gameLeftLblock[0][4]=7;

  gameLeftLblock[1][0]=gameLeftLblock[0][0]+50;
  gameLeftLblock[1][1]=gameLeftLblock[0][1]-50;
  gameLeftLblock[1][2]=50;
  gameLeftLblock[1][3]=50;
  gameLeftLblock[1][4]=7;
}
