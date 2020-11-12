import processing.core.*; 
import processing.data.*; 
import processing.event.*; 
import processing.opengl.*; 

import java.util.HashMap; 
import java.util.ArrayList; 
import java.io.File; 
import java.io.BufferedReader; 
import java.io.PrintWriter; 
import java.io.InputStream; 
import java.io.OutputStream; 
import java.io.IOException; 

public class mines extends PApplet {

public void setup() {
  setArrays();
  setVariablesOnStart();
  
   //segArray.length * scale + 1 it adds the one so that you can see the last line on the right
  background(255);
  fill(0);
  textAlign(CENTER);
  textSize(scale * 0.75f);
  
  drawShapes();
}

public void draw() {  
  if (start) {
    startGameDraw();
  } else {
    activeGameDraw();
  }
}

public void resetGame() { //function to theck if the player wants to play a new game
  if (keyPressed && key == ' ') { //if the space key is pressed
    resetVariables(); //resets the variables so that the game can be restarted
    drawShapes();
  }
}
public void startGameDraw() {
  if (mousePressed && (mouseButton == LEFT)) {
    if (!pressed) {
      checkSeg();
      drawShapes();
    }
    pressed = true;
    start = false;
  }
}

public void activeGameDraw() {
  if (mousePressed) {
    if (!pressed) {
      checkSeg();   
      drawShapes();
    }
    pressed = true;
  } else {
    pressed = false;
  }
  
  checkWin();
  checkEmpty();
  
  if (lose) {
    win = false; //prevents bug where both the lose and the win screen display when the player has lost
    
    onLose();
    
    resetGame();
  }
  
  if (win) {
    onWin();
    
    resetGame();
  }
}

public void drawShapes() { //function to draw shapes
  background(255); //resets the screen to be blank so that images and shapes aren't being placed over each other
  
  for (int x = 0; x * scale < width; x++) { //these two loops draw the grid of lines. They are kept separate so that the playing field doesn't have to be square all the time
    line(x * scale, 0, x * scale, height);
  }
  for (int y = 0; y * scale < width; y++) {
    line(0, y * scale, width, y * scale);
  }
  
  for (int i = 0; i < shownArray.length; i++) {
    for (int j = 0; j < shownArray[i].length; j++) { //loops through every segment
      if (shownArray[i][j] != 0 && shownArray[i][j] < 9) { //if that segment displays a number of adjacent mines
        text(str(shownArray[i][j]), i * scale, j * scale, scale, scale); //display the number of adjacent mines
      } else if (shownArray[i][j] == 9) { //if that segment is a mines
        image(mine, i * scale, j * scale, scale, scale); //display an image of a mine
      } else if (shownArray[i][j] == 10) { //if that segment hasn't been activated yet
        fill(200); //display a dark grey segment
        rect(i * scale, j * scale, scale, scale);
        fill(0);
      } else if (shownArray[i][j] == 11) { //if that segment has been flaged
        fill(200); //display a dark grey segment
        rect(i * scale, j * scale, scale, scale);
        fill(0);
        image(flag, i * scale, j * scale, scale, scale); //display an image of a flag
      } else if (shownArray[i][j] == 14) { //if that segment has been flaged, when it's a mine (only activated at the end of the game)
        fill(200); //display a dark grey segment
        rect(i * scale, j * scale, scale, scale);
        fill(0);
        image(wrongFlag, i * scale, j * scale, scale, scale); //display an image of a flag with an X over it
      } else if (shownArray[i][j] == 15) { //if that segment has been clicked, and is a mine
        image(clickedMine, i * scale, j * scale, scale, scale); //display an image of a mine, with a red background
      } else if (shownArray[i][j] == 0) { //sometimes the program leaves segments as 0, when they're supposed to 12 for the checkWin() function, this fixes that
        shownArray[i][j] = 12;
      } else { //if the segment has no adjacent mines
        fill(255); //display a white segment
        rect(i * scale, j * scale, scale, scale);
        fill(0);
      }
    }
  }
}
public int expandOnEmpty(int x, int y) {
  if (y - 1 >= 0) {
    shownArray[x][y - 1] = segArray[x][y - 1];
    
    if (x - 1 >= 0) {
      shownArray[x - 1][y - 1] = segArray[x - 1][y - 1];
    }
    
    if (x + 1 < width / scale) {
      shownArray[x + 1][y - 1] = segArray[x + 1][y - 1];
    }
  }
  
  if (x - 1 >= 0) {
    shownArray[x - 1][y] = segArray[x - 1][y];
  }
  
  if (x + 1 < width / scale) {
    shownArray[x + 1][y] = segArray[x + 1][y];
  }
  
  if (y + 1 < height / scale) {
    shownArray[x][y + 1] = segArray[x][y + 1];
    
    if (x - 1 >= 0) {
      shownArray[x - 1][y + 1] = segArray[x - 1][y + 1];
    }
    
    if (x + 1 < width / scale) {
      shownArray[x + 1][y + 1] = segArray[x + 1][y + 1];
    }
  }
  
  drawShapes();
  return x;
}

public void checkEmpty() { //function to activate all the segments around empty segments
  for (int x = 0; x * scale < width - scale; x++) {
    for (int y = 0; y * scale < height - scale; y++) { //loops through every segment
      if (shownArray[x][y] == 12) { //if that segment is empty
        expandOnEmpty(x, y);
        shownArray[x][y] = 0;
      }
    }
  }
}
public void checkWin() {
  int currentClicks = 0; //local variable used to see how many non-mine segments have been activated, or "clicked"
  
  for (int x = 0; x < shownArray.length; x++) {
    for (int y = 0; y < shownArray[x].length; y++) { //loops through every segment
      if (shownArray[x][y] == segArray[x][y]) { //if the shown segment is equal to the master field, meaning that it has been activated or "clicked"
        currentClicks += 1; //add one to the currentClicks variable
      }
    }
  }
  
  if (currentClicks == totalClicks) { //if every non-mine segment has been activated
    win = true;
  }
}

public void onWin() { //function to display win message
  onEndDisplay();

  fill(0, 255, 0, 67);
  rect(0, 0, width, height); //draw a semi-transparent green rectangle over entire screen
  fill(0, 0, 0, 255);
  
  textSize(scale * 2.8f);
  text("YOU\nWIN!\nSPACE TO\nREPLAY", 0, 0, width, height); //shows text
  textSize(scale * 0.75f);
}

public void onLose() { //function to display message and entire board when the player loses
  onEndDisplay();
  
  fill(255, 0, 0, 67);
  rect(0, 0, width, height); //draw a semi-transparent red rectangle over entire screen
  fill(0, 0, 0, 255);
  
  textSize(scale * 3.45f);
  text("SPACE\nTO\nRESTART", 0, 0, width, height); //shows text
  textSize(scale * 0.75f);
}

public void onEndDisplay() {
  for (int x = 0; x < shownArray.length; x++) {
    for (int y = 0; y < shownArray.length; y++) { //loops through every segment
      if (shownArray[x][y] == 11 && segArray[x][y] != 9) { //if the play flagged a segment that wasn't a mine
        shownArray[x][y] = 14; //change that segment to the wrong flag image
      } else if (shownArray[x][y] != 14 && shownArray[x][y] != 15 ) { //if that segment isn't showing the wrong flag image
        shownArray[x][y] = segArray[x][y]; //set that segment to the master
      }
    }
  }
}
public void checkSeg() { //function to check which segment has been pressed
  for (int x = 0; x * scale < width; x++) {
    for (int y = 0; y * scale < height; y++) { //loops through every segment
      if ((mouseX > x * scale && mouseX < x * scale + scale) && (mouseY > y * scale && mouseY < y * scale + scale)) { //if that segment has the mouse over it (if that segment has been pressed)
        if (start) { //if the player hasn't pressed any segments yet (if the game has just started)
          checkSegStart(x, y);
          checkSegNonStart(x, y);
        } else { //if the player is in the middle of the game
          checkSegNonStart(x, y);
        }
      }
    }
  }
}

public int checkSegStart(int x, int y) { //function that sets up the field on the first pressed
  segArray[x][y] = 13;
  
  if (y - 1 >= 0) {
    if (x - 1 >= 0) {
      segArray[x - 1][y - 1] = 13;
    }
    if (x + 1 < width / scale) {
      segArray[x + 1][y - 1] = 13;
    }
    
    segArray[x][y - 1] = 13;
  }
  
  if (x - 1 >= 0) {
    segArray[x - 1][y] = 13;
  }
  if (x + 1 < width / scale) {
    segArray[x + 1][y] = 13;
  }
  
  if (y + 1 < height / scale) {
    if (x - 1 >= 0) {
      segArray[x - 1][y + 1] = 13;
    }
    if (x + 1 < width / scale) {
      segArray[x + 1][y + 1] = 13;
    }
    
    segArray[x][y + 1] = 13;
  }
  
  //this function sets the the segment that has been pressed, and the eight around it, to a place holder value, then sets the mines
  //that ensures that on the first pressed, the player will be hitting a blank tile, to start the game off well
  
  setMines();
  return x;
}

public int checkSegNonStart(int x, int y) { //function to run when a segment has been pressed, and the field has been setup
  if (mouseButton == LEFT) { //if the left button has been pressed, meaning they want to reveal that segment
    if (shownArray[x][y] != 11) { //if that tile hasn't been flagged
      shownArray[x][y] = segArray[x][y]; //set the displayed segment to the master
      if (shownArray[x][y] == 12) { //if that segment is empty run the functions to deal with it
        expandOnEmpty(x, y);
        checkEmpty();
      } else if (shownArray[x][y] == 9) { //if that segment is a mine
        shownArray[x][y] = 15; //sets that segment to display an image of a mine outlined in red
        lose = true; //set the game to the lose state
      }
    }
  } else { //if the right button has been pressed, meaning they want to flag that statement
    if (shownArray[x][y] == 10) { //if that segment hasn't been revealed
      shownArray[x][y] = 11; //flag that segment
    } else if (shownArray[x][y] == 11) { //if that segment has been flagged
      shownArray[x][y] = 10; //unflag that segment
    }
  }
  return x;
}
public void setArrays() { //function to set segArray and shownArray to the width and height of the play area (divided by scale, so it's the number of segments needed to fill play area)
  for (int i = 0; i < width / scale; i++) {
    for (int j = 0; j < width / scale; j++) { //loops through every segment
      segArray[i] = append(segArray[i], 0);
      shownArray[i] = append(shownArray[i], 10); //appened with 10 so that when the segments are drawn, they're dark grey to indicate they haven't been pressed
    }
  }
}

public void setMines() { //function to fill segArray with mines
  while (currentMines < maxMines) { //repeat until all the mines that are needed are placed
    for (int i = 0; i < segArray.length; i++) {
      for (int j = 0; j < segArray[i].length; j++) { //loops through every segment
        if (segArray[i][j] == 0) { //if that segment is empty (at this point it's only going to be 0, 9, or 13 so it's only checking if there's a mine placed in that segment, or if it's been reserved)
          float posMines = random(10); //creates a random number so that mines are placed in different places each game
          if (posMines < 1.0f && currentMines < maxMines) { //gives a one in ten chance of a mine being placed in that segment. The second statement is there to prevent the function from placing too many mines
            segArray[i][j] = 9; //9 represents mines
            currentMines += 1; //add one to the placed mines counter
          }
        }
      }
    }
  }
  
  for (int x = 0; x < segArray.length; x++) {
    for (int y = 0; y < segArray[x].length; y++) { //loops through every segment
      if (segArray[x][y] == 13) { //if the segment has been reserved (segments are reserved around and including the segment that was first pressed so that you don't start the game by losing
        segArray[x][y] = 0; //set it to 0 because it doesn't need to be reserved anymore
      }
      if (segArray[x][y] != 9) {
        checkAdjacent(x, y); //for every segment that isn't a mine, check how many mines are around that segment
      }
    }
  }
}

public int checkAdjacent(int tiley, int tilex) { //function to check how many mines are around a given segment
  if (tiley - 1 >= 0) {
    if (tilex - 1 >= 0) {
      if (segArray[tiley-1][tilex-1] == 9) {
        segArray[tiley][tilex] += 1;
      }
    }
    if (segArray[tiley-1][tilex] == 9) {
      segArray[tiley][tilex] += 1;
    }
    if (tilex + 1 < width / scale) {
      if (segArray[tiley-1][tilex+1] == 9) {
        segArray[tiley][tilex] += 1;
      }
    }
  }

  if (tilex - 1 >= 0) {
    if (segArray[tiley][tilex-1] == 9) {
      segArray[tiley][tilex] += 1;
    }
  }

  if (tilex + 1 < width / scale) {
    if (segArray[tiley][tilex+1] == 9) {
      segArray[tiley][tilex] += 1;
    }
  }

  if (tiley + 1 < height / scale) {
    if (tilex - 1 >= 0) {
      if (segArray[tiley+1][tilex-1] == 9) {
        segArray[tiley][tilex] += 1;
      }
    }
    if (segArray[tiley+1][tilex] == 9) {
      segArray[tiley][tilex] += 1;
    }
    if (tilex + 1 < width / scale) {
      if (segArray[tiley+1][tilex+1] == 9) {
        segArray[tiley][tilex] += 1;
      }
    }
  }
  
  if (segArray[tiley][tilex] == 0) { //this reserves 0 to be used by shownArray as the value of a segment that hasn't been changed or pressed
    segArray[tiley][tilex] = 12;
  }
  
  return tilex;
  
  //the reason for all of these if statement is because if the segment is on an edge the program crashes because it called an array out of bounds
}
PImage mine;
PImage clickedMine;
PImage flag;
PImage wrongFlag;

int scale = 20;
boolean pressed = false;
boolean start = true;

boolean win = false;
boolean lose = false;

int maxMines = 40;
int currentMines = 0;

int[][] segArray = {{}, {}, {}, {}, {}, {}, {}, {}, {}, {}, {}, {}, {}, {}, {}, {}};
int[][] shownArray = {{}, {}, {}, {}, {}, {}, {}, {}, {}, {}, {}, {}, {}, {}, {}, {}};

int totalArea;
int totalClicks;

public void setVariablesOnStart() { 
  mine = loadImage("mine.png");
  clickedMine = loadImage("clickedMine.png");
  flag = loadImage("flag.png");
  wrongFlag = loadImage("wrongFlag.png");
  
  totalArea = segArray.length * segArray[0].length;
  totalClicks = totalArea - maxMines;
}

public void resetVariables() { //function to reset the variables back to their defaults when the player wants to restart a game
  pressed = false;
  start = true;

  win = false;
  lose = false;

  currentMines = 0;
  
  for (int x = 0; x < segArray.length; x++) {
    for (int y = 0; y < segArray.length; y++) { //loops through every segment
      segArray[x][y] = 0; //resets both arrays to their default value
      shownArray[x][y] = 10; //this is different than the setArrays() function because that appends to the arrays to fill the arrays, and this just resets their values
    }
  }
}
  public void settings() {  size(321, 321); }
  static public void main(String[] passedArgs) {
    String[] appletArgs = new String[] { "mines" };
    if (passedArgs != null) {
      PApplet.main(concat(appletArgs, passedArgs));
    } else {
      PApplet.main(appletArgs);
    }
  }
}
