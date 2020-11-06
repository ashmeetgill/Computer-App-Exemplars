import ddf.minim.*;
import ddf.minim.analysis.*;
import ddf.minim.effects.*;
import ddf.minim.signals.*;
import ddf.minim.spi.*;
import ddf.minim.ugens.*;

//Global Variables
Minim minim;
int numberOfSongs = 1;
AudioPlayer[] song = new AudioPlayer[numberOfSongs];
AudioMetaData[] songMetaData = new AudioMetaData[numberOfSongs];
int currentSong = 0;
color ink, black=0, white=#FFFFFF, red=#FF0000,purple=#FF00FF ,blue=#0000ff ;
float drawingSurfaceX, drawingSurfaceY, drawingSurfaceWidth, drawingSurfaceHeight;
float drawingDiameter;
float circleX, circleY, circleDiameter;
float choiceX, choiceY, choiceWidth, choiceHeight;
float choiceX2, choiceY2, choiceWidth2, choiceHeight2;
float colorButtonX, colorButtonY, colorButtonWidth, colorButtonHeight;
float colorButtonX2, colorButtonY2, colorButtonWidth2, colorButtonHeight2;
float colorButtonX3, colorButtonY3, colorButtonWidth3, colorButtonHeight3;
float colorButtonX4, colorButtonY4, colorButtonWidth4, colorButtonHeight4;
float colorButtonX5, colorButtonY5, colorButtonWidth5, colorButtonHeight5;
float brushButtonX, brushButtonY, brushButtonWidth, brushButtonHeight;
float brushButtonX2, brushButtonY2, brushButtonWidth2, brushButtonHeight2;
float brushButtonX3, brushButtonY3, brushButtonWidth3, brushButtonHeight3;
float quitButtonX, quitButtonY, quitButtonWidth, quitButtonHeight;
float imageButtonX, imageButtonY, imageButtonWidth, imageButtonHeight;
Boolean drawEllipse=false, drawRect=false;
Boolean inkIsBlack=false, inkIsRed=false, inkIsWhite=false, inkIsPurple=false, inkIsBlue=false;
Boolean ellipse=false, rect=true;
Boolean image=false;
PImage pic;
float imageX, imageY, imageWidth, imageHeight;
int imageWidthRatio;
float imageHeightRatio;
PFont titleFont;

void setup() {
  size (1920, 1080);
  minim = new Minim(this);
  song[0] = minim.loadFile("Pen Clicking .mp3");
  drawingSurfaceX = width*1/4;
  drawingSurfaceY = height*1/6;
  drawingSurfaceWidth = width*3/4;
  drawingSurfaceHeight = height*12/16;
  //
  colorButtonX = width*1/32;
  colorButtonY = height*2/6;
  colorButtonWidth = width*4/32;
  colorButtonHeight = height*3/32;
  colorButtonX2 = width*1/32;
  colorButtonY2 = height*3/6;
  colorButtonWidth2 = width*4/32;
  colorButtonHeight2 = height*3/32;
  colorButtonX3 = width*1/32;
  colorButtonY3 = height*4/6;
  colorButtonWidth3 = width*4/32;
  colorButtonHeight3 = height*3/32;
  colorButtonX4 = width*1/32;
  colorButtonY4 = height*5/6;
  colorButtonWidth4 = width*4/32;
  colorButtonHeight4 = height*3/32;
  colorButtonX5 = width*1/32;
  colorButtonY5 = height*1/6;
  colorButtonWidth5 = width*4/32;
  colorButtonHeight5 = height*3/32;
  quitButtonX = width*15/16;
  quitButtonY = height*0;
  quitButtonWidth = width*2/32; 
  quitButtonHeight = height*3/32;
  //
  drawingDiameter = width*1/100;
  rect(drawingSurfaceX, drawingSurfaceY, drawingSurfaceWidth, drawingSurfaceHeight);
  //
  circleX = width*3.25/16;
  circleY = height*2/6;
  circleDiameter = width*7/100;
  ellipse(circleX, circleY, circleDiameter, circleDiameter);
  //
  choiceX = width*5.5/32;
  choiceY = height*4/6;
  choiceWidth = width*1/16;
  choiceHeight = width*1/16;
  rect(choiceX, choiceY, choiceWidth, choiceHeight);
  //
  choiceX2 = width*5.5/32;
  choiceY2 = height*1.65/6;
  choiceWidth2 = width*1/16;
  choiceHeight2 = width*1/16;
  //
  brushButtonX = width*2.25/6;
  brushButtonY = height*1.75/16;
  brushButtonWidth = width*3.5/100;
  brushButtonHeight = width*3.5/100;
  //
  brushButtonX2 = width*3/6;
  brushButtonY2 = height*1.2/16;
  brushButtonWidth2 = width*5.5/100;
  brushButtonHeight2 = width*5.5/100;
  //
  brushButtonX3 = width*4/6;
  brushButtonY3 = height*1/16;
  brushButtonWidth3 = width*6/100;
  brushButtonHeight3 = width*6/100;
  //
  imageButtonX = width*8/10;
  imageButtonY = height*1.5/16;
  imageButtonWidth = width*1/16;
  imageButtonHeight = height*1/16;
  rect(imageButtonX, imageButtonY, imageButtonWidth, imageButtonHeight);
  //
  pic = loadImage("25-Colorful-Rainbow-Coloring-Pages-For-Your-Little-Ones.jpg");
  imageWidthRatio = 1200/1200;
  imageHeightRatio = 1350/1350.0;
  imageX = width*1/4;
  imageY = height*1/6;
  imageWidth = width*3/4;
  imageHeight = height*12/16; 
  //
  titleFont = createFont ("Centaur", 48);
}

void draw() {
  if (inkIsRed == true) {
    ink = red;
  }
  if (inkIsBlack == true) {
    ink = black;
  }
  if (inkIsPurple == true) {
    ink = purple;
  }
  if (inkIsBlue == true) {
    ink = blue;
  }
  if (inkIsWhite == true) {
    ink = white;
  }
  if (drawEllipse == true && mouseX>drawingSurfaceX  && mouseX<drawingSurfaceX+drawingSurfaceWidth  && mouseY>drawingSurfaceY && mouseY<drawingSurfaceY+drawingSurfaceHeight) {
    fill(ink);
    ellipse(mouseX, mouseY, drawingDiameter, drawingDiameter);
  }
  if (drawRect == true && mouseX>drawingSurfaceX  && mouseX<drawingSurfaceX+drawingSurfaceWidth  && mouseY>drawingSurfaceY && mouseY<drawingSurfaceY+drawingSurfaceHeight) {
    fill(ink);
    rect(mouseX, mouseY, drawingDiameter,drawingDiameter );
  }
  fill(ink);
  if (rect == true) {
    ellipse = false;
    rect(brushButtonX, brushButtonY, brushButtonWidth, brushButtonHeight);
    rect(brushButtonX2, brushButtonY2, brushButtonWidth2, brushButtonHeight2);
    rect(brushButtonX3, brushButtonY3, brushButtonWidth3, brushButtonHeight3);
  }
  if (ellipse == true) {
    rect = false;
  }
  fill(red);
  rect(colorButtonX, colorButtonY, colorButtonWidth, colorButtonHeight);
  fill(black);
  rect(colorButtonX2, colorButtonY2, colorButtonWidth2, colorButtonHeight2);
  fill(purple);
  rect(colorButtonX3, colorButtonY3, colorButtonWidth3, colorButtonHeight3);
  fill(blue);
  rect(colorButtonX4, colorButtonY4, colorButtonWidth4, colorButtonHeight4);
  fill(white);
  rect(colorButtonX5, colorButtonY5, colorButtonWidth5, colorButtonHeight5);
  fill(red);
  rect(quitButtonX, quitButtonY, quitButtonWidth, quitButtonHeight);
  //
  fill(black);
  textAlign (CENTER, CENTER);
  textFont(titleFont, 50);
  text("Colours:", width*0.5/16, height*1/16, width*2/16, height *2/16);
  text("Circle", width*2.25/16, height*2.15/6, width*2/16, height*2/16);
  text("Square", width*2.25/16, height*3.45/6, width*2/16, height*2/16);
  text("Image", width*3.055/4, height*0.5/1000, width*2/16, height*2/16);
} 

void mousePressed() {
  if ( mouseX>drawingSurfaceX  && mouseX<drawingSurfaceX+drawingSurfaceWidth  && mouseY>drawingSurfaceY && mouseY<drawingSurfaceY+drawingSurfaceHeight ) {
    song[0].play();
    song[0].rewind();
    println("drawing surface");
    if (ellipse == true) {
      drawEllipse = true;
      rect = false;
    }
    else if (rect=true) {
      drawRect = true;
      ellipse = false;
    }
    else {
      drawEllipse = false;
      drawRect = false;
    }
  }
  if ( mouseX>quitButtonX  && mouseX<quitButtonX+quitButtonWidth  && mouseY>quitButtonY && mouseY<quitButtonY+quitButtonHeight ) {
    song[0].play();
    song[0].rewind();
     {exit();}
  }
  if ( mouseX>colorButtonX  && mouseX<colorButtonX+colorButtonWidth  && mouseY>colorButtonY && mouseY<colorButtonY+colorButtonHeight ) {
    song[0].play();
    song[0].rewind();
    inkIsRed = true;
    inkIsBlack = false;
    inkIsBlue = false;
    inkIsPurple = false;
    inkIsWhite = false;
  }
  if ( mouseX>colorButtonX2  && mouseX<colorButtonX2+colorButtonWidth2  && mouseY>colorButtonY2 && mouseY<colorButtonY2+colorButtonHeight2 ) {
    song[0].play();
    song[0].rewind();
    inkIsRed = false;
    inkIsBlack = true;
    inkIsBlue = false;
    inkIsPurple = false;
    inkIsWhite = false;
  }
  if ( mouseX>colorButtonX3  && mouseX<colorButtonX3+colorButtonWidth3  && mouseY>colorButtonY3 && mouseY<colorButtonY3+colorButtonHeight3 ) {
    song[0].play();
    song[0].rewind();
    inkIsRed = false;
    inkIsBlack = false;
    inkIsBlue = false;
    inkIsPurple = true;
    inkIsWhite = false;
  }
  if ( mouseX>colorButtonX4  && mouseX<colorButtonX4+colorButtonWidth4  && mouseY>colorButtonY4 && mouseY<colorButtonY4+colorButtonHeight4 ) {
    song[0].play();
    song[0].rewind();
    inkIsRed = false;
    inkIsBlack = false;
    inkIsBlue = true;
    inkIsPurple = false;
    inkIsWhite = false;
  }
  if ( mouseX>colorButtonX5  && mouseX<colorButtonX5+colorButtonWidth5  && mouseY>colorButtonY5 && mouseY<colorButtonY5+colorButtonHeight5 ) {
    song[0].play();
    song[0].rewind();
    inkIsRed = false;
    inkIsBlack = false;
    inkIsBlue = false;
    inkIsPurple = false;
    inkIsWhite = true;
  }
  if ( mouseX>choiceX2  && mouseX<choiceX2+choiceWidth2  && mouseY>choiceY2 && mouseY<choiceY2+choiceHeight2 ) {
    song[0].play();
    song[0].rewind();
    ellipse = true;
    rect = false;
  }
  if ( mouseX>choiceX  && mouseX<choiceX+choiceWidth  && mouseY>choiceY && mouseY<choiceY+choiceHeight ) {
    song[0].play();
    song[0].rewind();
    rect = true;
    ellipse = false;
  }
  if ( mouseX>brushButtonX  && mouseX<brushButtonX+brushButtonWidth  && mouseY>brushButtonY && mouseY<brushButtonY+brushButtonHeight ) {
    song[0].play();
    song[0].rewind();
    drawingDiameter = width*1/100;
  }
  if ( mouseX>brushButtonX2  && mouseX<brushButtonX2+brushButtonWidth2  && mouseY>brushButtonY2 && mouseY<brushButtonY2+brushButtonHeight2 ) {
    song[0].play();
    song[0].rewind();
    drawingDiameter = width*2/100;
  }
  if ( mouseX>brushButtonX3  && mouseX<brushButtonX3+brushButtonWidth3  && mouseY>brushButtonY3 && mouseY<brushButtonY3+brushButtonHeight3 ) {
    song[0].play();
    song[0].rewind();
    drawingDiameter = width*4/100;
  }
  if ( mouseX>imageButtonX  && mouseX<imageButtonX+imageButtonWidth  && mouseY>imageButtonY && mouseY<imageButtonY+imageButtonHeight ) {
    song[0].play();
    song[0].rewind();
    image = true;
    if (image == true) {
      image (pic, imageX, imageY, imageWidth, imageHeight);
    }
  }
}

void mouseReleased() {
  if (drawEllipse == true) {
    drawEllipse = false;
  }
  else if (drawRect == true) {
    drawRect = false;
  }
  else {
    drawEllipse = false;
    drawRect = false;
  }
}
