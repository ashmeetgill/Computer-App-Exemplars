import processing.core.*; 
import processing.data.*; 
import processing.event.*; 
import processing.opengl.*; 

import ddf.minim.*; 
import ddf.minim.analysis.*; 
import ddf.minim.effects.*; 
import ddf.minim.signals.*; 
import ddf.minim.spi.*; 
import ddf.minim.ugens.*; 

import java.util.HashMap; 
import java.util.ArrayList; 
import java.io.File; 
import java.io.BufferedReader; 
import java.io.PrintWriter; 
import java.io.InputStream; 
import java.io.OutputStream; 
import java.io.IOException; 

public class DrawingProgram extends PApplet {









Minim minim;
int ink, black=0xff000000;
float drawingSurfaceX, drawingSurfaceY, drawingSurfaceWidth, drawingSurfaceHeight;
float drawingDiameter;
float cbox1X1, cbox1Y1, cbox1X2, cbox1Y2, cbox2X1, cbox2Y1, cbox2X2, cbox2Y2, cbox3X1, cbox3Y1, cbox3X2, cbox3Y2, cbox4X1, cbox4Y1, cbox4X2, cbox4Y2, cbox5X1, cbox5Y1, cbox5X2, cbox5Y2, cbox6X1, cbox6Y1, cbox6X2, cbox6Y2, cbox7X1, cbox7Y1, cbox7X2, cbox7Y2, cbox8X1, cbox8Y1, cbox8X2, cbox8Y2, cbox9X1, cbox9Y1, cbox9X2, cbox9Y2, cbox10X1, cbox10Y1, cbox10X2, cbox10Y2, cbox11X1, cbox11Y1, cbox11X2, cbox11Y2, cbox12X1, cbox12Y1, cbox12X2, cbox12Y2, cbox13X1, cbox13Y1, cbox13X2, cbox13Y2, cbox14X1, cbox14Y1, cbox14X2, cbox14Y2;
Boolean draw=false, eraser=false;
boolean blackink, redink, whiteink, dblueink, lblueink, greenink, yellowink, orangeink, greyink, brownink, dgreenink, crimsonink, pinkink, purpleink, jgreenink;
int white=255, red=0xffFF0329, dblue=0xff0308FF, lblue=0xff24d9ff, green=0xff23FF03, yellow=0xffFFF303, orange=0xffF39C12, grey=0xff7B7D7D, brown = 0xff8B4513, dgreen=0xff576E35, crimson=0xffA93226, pink=0xffffb8c6, purplex=0xffd700f7, jgreen=0xff007e61;
float newcanvasboxX1, newcanvasboxY1, newcanvasboxX2, newcanvasboxY2;
boolean thickness1, thickness2, thickness3, thickness4, thickness5;
boolean image;
float imagebuttonX1, imagebuttonY1, imagebuttonX2, imagebuttonY2;
float dline1X1, dline1Y1, dline1Diameter, dline2X1, dline2Y1, dline2Diameter, dline3X1, dline3Y1, dline3Diameter;
float background1X1, background1Y1, background1X2, background1Y2;
float background2X1, background2Y1, background2X2, background2Y2;
float tb1X1, tb1Y1, tb1X2, tb1Y2;
float tb2X1, tb2Y1, tb2X2, tb2Y2;
float tb3X1, tb3Y1, tb3X2, tb3Y2;
float tb4X1, tb4Y1, tb4X2, tb4Y2;
float tb5X1, tb5Y1, tb5X2, tb5Y2;
float lineTH1X1, lineTH1Y1, lineTH1X2, lineTH1Y2;
float lineTH2X1, lineTH2Y1, lineTH2X2, lineTH2Y2;
float lineTH3X1, lineTH3Y1, lineTH3X2, lineTH3Y2;
float lineTH4X1, lineTH4Y1, lineTH4X2, lineTH4Y2;
float lineTH5X1, lineTH5Y1, lineTH5X2, lineTH5Y2;
float circleTH1X1, circleTH1Y1, circleTH1Diameter;
float circleTH2X1, circleTH2Y1, circleTH2Diameter;
float circleTH3X1, circleTH3Y1, circleTH3Diameter;
float circleTH4X1, circleTH4Y1, circleTH4Diameter;
float circleTH5X1, circleTH5Y1, circleTH5Diameter;
float LineThickness;
float imageStartWidth, imageStartHeight, imageWidth, imageHeight, imageStartWidth12, imageStartHeight12, imageWidth12, imageHeight12;
float imageWidthRatio, imageHeightRatio, imageWidthRatio12, imageHeightRatio12;
PImage pic, pic12;
float PauseButtonX1, PauseButtonY1, PauseButtonDiameter;
float pbInternalX1, pbInternalY1, pbInternalX2, pbInternalY2;
float pbInternal2X1, pbInternal2Y1, pbInternal2X2, pbInternal2Y2;
int numberOfSongs = 2;
AudioPlayer[] song = new AudioPlayer[numberOfSongs];
AudioMetaData[] songMetaData = new AudioMetaData[numberOfSongs];
public void setup() {
  
  
  pic12 = loadImage("https://lh3.googleusercontent.com/proxy/uGFDN1oQnxRig_rUQyD58bAC0cCIUVKNbaBPAlPkKK2spnUy1TAnh0_6M9obQMP09HIh3e9O2bDHJuHGTEJ0xLpaCU_HVL7wxxwv");
  imageWidthRatio12 = 2633.0f/1542.0f;
  imageHeightRatio12 = 2633.0f/2633.0f;
  imageStartWidth12 = width*0/4;
  imageStartHeight12 = height*0/5;
   imageWidth12 = width*width*3/4; //Aspect Ratio
  imageHeight12 = height*4/5;
  
   pic = loadImage("https://kidsactivitiesblog--o--com.follycdn.com/wp-content/uploads/2020/03/KAB-Anime-Coloring-Page-for-Kids-.jpg");
  imageWidthRatio = 1200.0f/630.0f;
  imageHeightRatio = 1200.0f/1200.0f;
  imageStartWidth = width*0/4;
  imageStartHeight = height*0/5;
  imageWidth = width*3/4;
  imageHeight = height*4/5;
  
  minim = new Minim(this);
  song[0] = minim.loadFile("jump man 93 - oldbandstuffs 1 (128 kbps).mp3");
    song[1] = minim.loadFile("better mouse click sound.mp3");

  
  fill(0);
  background1X1 = width*3/4;
  background1Y1 = height*0/5;
  background1X2 = width*1/4;
  background1Y2 = height*5/5;

  background2X1 = width*0/4;
  background2Y1 =height*4/5;
  background2X2 = width*3/4;
  background2Y2 =height*1/5;
fill(white);
  quitButtonSetup();
  drawingSurfaceX = width*0;
  drawingSurfaceY = height*0;
  drawingSurfaceWidth = width*3/4;
  drawingSurfaceHeight = height*4/5;
  fill(white);




  //Color Choosers

  cbox1X1 = width*49/64;
  cbox1Y1 = height*2/30;
  cbox1X2 = 30;
  cbox1Y2 = 30;

  cbox2X1 =  width*51/64;
  cbox2Y1 = height*2/30;
  cbox2X2 = 30;
  cbox2Y2 = 30;

  cbox3X1 = width*53/64;
  cbox3Y1 = height*2/30;
  cbox3X2 = 30;
  cbox3Y2 = 30;

  cbox4X1 = width*55/64;
  cbox4Y1 = height*2/30;
  cbox4X2 = 30;
  cbox4Y2 = 30;

  cbox5X1 = width*57/64;
  cbox5Y1 = height*2/30;
  cbox5X2 = 30;
  cbox5Y2 = 30;

  cbox6X1 = width*59/64;
  cbox6Y1 = height*2/30;
  cbox6X2 = 30;
  cbox6Y2 = 30;

  cbox7X1 = width*61/64;
  cbox7Y1 = height*2/30;
  cbox7X2 = 30;
  cbox7Y2 = 30;

  cbox8X1 = width*49/64;
  cbox8Y1 = height*4/30;
  cbox8X2 = 30;
  cbox8Y2 = 30;

  cbox9X1 =  width*51/64;
  cbox9Y1 = height*4/30;
  cbox9X2 = 30;
  cbox9Y2 = 30;

  cbox10X1 = width*53/64;
  cbox10Y1 = height*4/30;
  cbox10X2 = 30; 
  cbox10Y2 = 30;

  cbox11X1 = width*55/64;
  cbox11Y1 = height*4/30;
  cbox11X2 = 30;
  cbox11Y2 = 30;

  cbox12X1 = width*57/64;
  cbox12Y1 = height*4/30;
  cbox12X2 = 30;
  cbox12Y2 = 30;

  cbox13X1 = width*59/64;
  cbox13Y1 = height*4/30;
  cbox13X2 = 30;
  cbox13Y2 = 30;

  cbox14X1 = width*61/64;
  cbox14Y1 = height*4/30;
  cbox14X2 = 30;
  cbox14Y2 = 30;

  //                                                           dotted line boxes

  newcanvasboxX1 = width*50/64;
  newcanvasboxY1 = height*8/30;
  newcanvasboxX2 = 85;
  newcanvasboxY2 = 55;
  //                                                     eraser boxes
  imagebuttonX1 = width*57/64;
  imagebuttonY1 = height*8/30;
  imagebuttonX2 = 85;
  imagebuttonY2 = 55;
  //                                                       dotted line
  dline1X1 =width*102/128;
  dline1Y1 =height*9/30;
  dline1Diameter =9;

  dline2X1 =width*104/128;
  dline2Y1 =height*9/30;
  dline2Diameter =9;

  dline3X1 =width*106/128;
  dline3Y1 =height*9/30;
  dline3Diameter =9;


  //                        Line Thickness Boxes

  lineTH1X1 = width*1/16;
  lineTH1Y1 = height*137/160;
  lineTH1X2 = 120;
  lineTH1Y2 = 70;

  lineTH2X1 = width*3/16;
  lineTH2Y1 = height*137/160;
  lineTH2X2 = 120;
  lineTH2Y2 = 70;

  lineTH3X1 = width*5/16;
  lineTH3Y1 = height*137/160;
  lineTH3X2 = 120;
  lineTH3Y2 = 70;

  lineTH4X1 = width*7/16;
  lineTH4Y1 = height*137/160;
  lineTH4X2 = 120;
  lineTH4Y2 = 70;

  lineTH5X1 = width*9/16;
  lineTH5Y1 = height*137/160;
  lineTH5X2 = 120;
  lineTH5Y2 = 70;

  //                                Line Thickness Circles

  circleTH1X1 = width*22/200;
  circleTH1Y1 = height*144/160;
  circleTH1Diameter = width*1/100;

  circleTH2X1 = width*47/200;
  circleTH2Y1 = height*144/160;
  circleTH2Diameter = 19;

  circleTH3X1 = width*72/200;
  circleTH3Y1 = height*144/160;
  circleTH3Diameter = 24;

  circleTH4X1 = width*97/200;
  circleTH4Y1 = height*144/160;
  circleTH4Diameter = 30;

  circleTH5X1 = width*122/200;
  circleTH5Y1 = height*144/160;
  circleTH5Diameter = 40;
//                                      Pause Button

PauseButtonX1 = width*175/200;
PauseButtonY1 = height*130/160;
PauseButtonDiameter = 100;

pbInternalX1 =width*171/200;
pbInternalY1 =height*123/160;
pbInternalX2 = 15;
pbInternalY2 = 60;

pbInternal2X1 =width*176/200;
pbInternal2Y1 =height*123/160;
pbInternal2X2 = 15;
pbInternal2Y2 = 60;
/*
thickness1 =  1;
thickness2 =  3;
thickness3 =  5;
thickness4 =  7;
thickness5 =  9;
*/
  rect(drawingSurfaceX, drawingSurfaceY, drawingSurfaceWidth, drawingSurfaceHeight);
}



public void draw() {

  
  if (draw == true) {
    fill(ink);
   
strokeWeight(LineThickness);

    stroke(ink);
    line(mouseX, mouseY, pmouseX, pmouseY);
  }
  
strokeWeight(1);
  stroke(black);
  fill(white);
  rect(background1X1, background1Y1, background1X2, background1Y2);
  rect(background2X1, background2Y1, background2X2, background2Y2);
  quitButtonDraw();
  //     Color Choosers Rect lines

  fill(black);
  rect(cbox1X1, cbox1Y1, cbox1X2, cbox1Y2);

  fill(red);

  rect(cbox2X1, cbox2Y1, cbox2X2, cbox2Y2);

  fill(dblue);

  rect(cbox3X1, cbox3Y1, cbox3X2, cbox3Y2);

  fill(lblue);

  rect(cbox4X1, cbox4Y1, cbox4X2, cbox4Y2);

  fill(yellow);

  rect(cbox5X1, cbox5Y1, cbox5X2, cbox5Y2);

  fill(orange);

  rect(cbox6X1, cbox6Y1, cbox6X2, cbox6Y2);

  fill(grey);

  rect(cbox7X1, cbox7Y1, cbox7X2, cbox7Y2);

  fill(white);

  rect(cbox8X1, cbox8Y1, cbox8X2, cbox8Y2);

  fill(green);

  rect(cbox9X1, cbox9Y1, cbox9X2, cbox9Y2);

  fill(crimson);

  rect(cbox10X1, cbox10Y1, cbox10X2, cbox10Y2);

  fill(pink);

  rect(cbox11X1, cbox11Y1, cbox11X2, cbox11Y2);

  fill(jgreen);

  rect(cbox12X1, cbox12Y1, cbox12X2, cbox12Y2);

  fill(purplex);

  rect(cbox13X1, cbox13Y1, cbox13X2, cbox13Y2);

  fill(brown);

  rect(cbox14X1, cbox14Y1, cbox14X2, cbox14Y2);
  fill(white);

  //                                                                  dotted line boxes rect
  rect(newcanvasboxX1, newcanvasboxY1, newcanvasboxX2, newcanvasboxY2);
  //                                                                         line boxes
  rect(imagebuttonX1, imagebuttonY1, imagebuttonX2, imagebuttonY2);
  //                                                                           dotted lines inside of new canvas button
  ellipse(dline1X1, dline1Y1, dline1Diameter, dline1Diameter);
  ellipse(dline2X1, dline2Y1, dline2Diameter, dline2Diameter);
  ellipse(dline3X1, dline3Y1, dline3Diameter, dline3Diameter);
  strokeWeight(1);
  rect(lineTH1X1, lineTH1Y1, lineTH1X2, lineTH1Y2);
  rect(lineTH2X1, lineTH2Y1, lineTH2X2, lineTH2Y2);
  rect(lineTH3X1, lineTH3Y1, lineTH3X2, lineTH3Y2);
  rect(lineTH4X1, lineTH4Y1, lineTH4X2, lineTH4Y2);
  rect(lineTH5X1, lineTH5Y1, lineTH5X2, lineTH5Y2);
  fill(black);
  ellipse(circleTH1X1, circleTH1Y1, circleTH1Diameter, circleTH1Diameter);
  ellipse(circleTH2X1, circleTH2Y1, circleTH2Diameter, circleTH2Diameter);
  ellipse(circleTH3X1, circleTH3Y1, circleTH3Diameter, circleTH3Diameter);
  ellipse(circleTH4X1, circleTH4Y1, circleTH4Diameter, circleTH4Diameter);
  ellipse(circleTH5X1, circleTH5Y1, circleTH5Diameter, circleTH5Diameter);
  fill(black);
  fill(white);
   //rect(width*167/200, height*119/160,95,95);
  ellipse(PauseButtonX1, PauseButtonY1, PauseButtonDiameter, PauseButtonDiameter);
  rect(pbInternalX1, pbInternalY1, pbInternalX2, pbInternalY2);
 rect(pbInternal2X1, pbInternal2Y1, pbInternal2X2, pbInternal2Y2);

  String title0 = "ERASER";
  PFont titleFont0;
  titleFont0 = createFont ("Times New Roman Bold", 15);
  text(title0, width*56/64, height*8/30, width*1/10, height*1/20 );
  textAlign(CENTER, CENTER);
  textFont(titleFont0, 15);
  fill(white);
  
  if (redink == true) {
    ink = red;
  }
  if (blackink == true) {
    ink = black;
  }
  if (whiteink == true) {
    ink =white ;
  }
  if (dblueink == true) {
    ink =dblue ;
  }
  if (lblueink == true) {
    ink =lblue;
  }
  if (greenink == true) {
    ink =green ;
  }
  if (yellowink == true) {
    ink =yellow ;
  }
  if (orangeink == true) {
    ink =orange ;
  }
  if (greyink == true) {
    ink =grey ;
  } 
  if (brownink == true) {
    ink =brown ;
  }
  if (dgreenink == true) {
    ink =dgreen ;
  }
  if (crimsonink == true) {
    ink =crimson ;
  }
  if (pinkink == true) {
    ink =pink ;
  }
  if (purpleink == true) {
    ink =purplex ;
  }
  if (jgreenink == true) {
    ink =jgreen ;
  }
  
  /*
  if (thickness1 == true) {
    LineThickness = 1;
  }
  if (thickness2 == true) {
    LineThickness = 3;
  }
  if (thickness3 == true) {
    LineThickness = 5;
  }
  if (thickness4 == true) {
    LineThickness = 7;
  }
  if (thickness5 == true) {
    LineThickness = 9;
  } */
  

}

public void mousePressed() {
 
  
  quitButtonMouseClicked();
  fill(white);
  if ( mouseX>drawingSurfaceX  && mouseX<drawingSurfaceX+drawingSurfaceWidth  && mouseY>drawingSurfaceY && mouseY<drawingSurfaceY+drawingSurfaceHeight) {
    
   println("drawing surface");
    if (draw == false) {
     draw = true;
    } else {
      draw = false;
    }
     // example to change ink
    drawingDiameter = width*1/100;
  }

 if ( mouseX>width*50/64  && mouseX<width*50/64+85  && mouseY>height*8/30 && mouseY<width*50/64+55) {
    println("clear canvas");
    rect(drawingSurfaceX, drawingSurfaceY, drawingSurfaceWidth, drawingSurfaceHeight);
    fill(white);
    song[1].play();
song[1].rewind();
 }
 
  if ( mouseX>imagebuttonX1  && mouseX<imagebuttonX1+imagebuttonX2  && mouseY>imagebuttonY1 && mouseY<imagebuttonY1+imagebuttonY2) {
    println("image");
    rect(imageStartWidth12, imageStartHeight12, imageWidth12, imageHeight12);
    image (pic, imageStartWidth, imageStartHeight, imageWidth, imageHeight);
    song[1].play();
song[1].rewind();
  }
  
 
  
  
if ( mouseX>cbox1X1  && mouseX<cbox1X1+cbox1X2  && mouseY>cbox1Y1 && mouseY<cbox1Y1+cbox1Y2) {
    println("Black");
    whiteink=false;
    redink=false;
    dblueink=false;
    lblueink=false;
    greenink=false;
    yellowink=false;
    orangeink=false;
    greyink=false;
    brownink=false;
    dgreenink=false;
    crimsonink=false;
    pinkink=false;
    purpleink=false;
    jgreenink=false;
    blackink=true;
    song[1].play();
song[1].rewind();
  }
 
  
  if ( mouseX>cbox2X1  && mouseX<cbox2X1+cbox2X2  && mouseY>cbox2Y1 && mouseY<cbox2Y1+cbox2Y2) {
    println("Red");
    whiteink=false;
    redink=true;
    dblueink=false;
    lblueink=false;
    greenink=false;
    yellowink=false;
    orangeink=false;
    greyink=false;
    brownink=false;
    dgreenink=false;
    crimsonink=false;
    pinkink=false;
    purpleink=false;
    jgreenink=false;
    blackink=false;
    song[1].play();
song[1].rewind();
    
  }
  
  if ( mouseX>cbox3X1  && mouseX<cbox3X1+cbox3X2  && mouseY>cbox3Y1 && mouseY<cbox3Y1+cbox3Y2) {
    println("Dark Blue");
    whiteink=false;
    redink=false;
    dblueink=true;
    lblueink=false;
    greenink=false;
    yellowink=false;
    orangeink=false;
    greyink=false;
    brownink=false;
    dgreenink=false;
    crimsonink=false;
    pinkink=false;
    purpleink=false;
    jgreenink=false;
    blackink=false;
    song[1].play();
song[1].rewind();
  }
  
  if ( mouseX>cbox4X1  && mouseX<cbox4X1+cbox4X2  && mouseY>cbox4Y1 && mouseY<cbox4Y1+cbox4Y2) {
    println("Light Blue");
    whiteink=false;
    redink=false;
    dblueink=false;
    lblueink=true;
    greenink=false;
    yellowink=false;
    orangeink=false;
    greyink=false;
    brownink=false;
    dgreenink=false;
    crimsonink=false;
    pinkink=false;
    purpleink=false;
    jgreenink=false;
    blackink=false;
    song[1].play();
song[1].rewind();
  }
  
  if ( mouseX>cbox5X1  && mouseX<cbox5X1+cbox5X2  && mouseY>cbox5Y1 && mouseY<cbox5Y1+cbox5Y2) {
    println("Yellow");
    whiteink=false;
    redink=false;
    dblueink=false;
    lblueink=false;
    greenink=false;
    yellowink=true;
    orangeink=false;
    greyink=false;
    brownink=false;
    dgreenink=false;
    crimsonink=false;
    pinkink=false;
    purpleink=false;
    jgreenink=false;
    blackink=false;
    song[1].play();
song[1].rewind();
  }
  
  if ( mouseX>cbox6X1  && mouseX<cbox6X1+cbox6X2  && mouseY>cbox6Y1 && mouseY<cbox6Y1+cbox6Y2) {
    println("Orange");
    whiteink=false;
    redink=false;
    dblueink=false;
    lblueink=false;
    greenink=false;
    yellowink=false;
    orangeink=true;
    greyink=false;
    brownink=false;
    dgreenink=false;
    crimsonink=false;
    pinkink=false;
    purpleink=false;
    jgreenink=false;
    blackink=false;
    song[1].play();
song[1].rewind();
  }
  if ( mouseX>cbox7X1  && mouseX<cbox7X1+cbox7X2  && mouseY>cbox7Y1 && mouseY<cbox7Y1+cbox7Y2) {
    println("Grey");
    whiteink=false;
    redink=false;
    dblueink=false;
    lblueink=false;
    greenink=false;
    yellowink=false;
    orangeink=false;
    greyink=true;
    brownink=false;
    dgreenink=false;
    crimsonink=false;
    pinkink=false;
    purpleink=false;
    jgreenink=false;
    blackink=false;
    song[1].play();
song[1].rewind();
  }
  if ( mouseX>cbox8X1  && mouseX<cbox8X1+cbox8X2  && mouseY>cbox8Y1 && mouseY<cbox8Y1+cbox8Y2) {
    println("White");
    whiteink=true;
    redink=false;
    dblueink=false;
    lblueink=false;
    greenink=false;
    yellowink=false;
    orangeink=false;
    greyink=false;
    brownink=false;
    dgreenink=false;
    crimsonink=false;
    pinkink=false;
    purpleink=false;
    jgreenink=false;
    blackink=false;
    song[1].play();
song[1].rewind();
  }
  if ( mouseX>cbox9X1  && mouseX<cbox9X1+cbox9X2  && mouseY>cbox9Y1 && mouseY<cbox9Y1+cbox9Y2) {
    println("Green");
    whiteink=false;
    redink=false;
    dblueink=false;
    lblueink=false;
    greenink=true;
    yellowink=false;
    orangeink=false;
    greyink=false;
    brownink=false;
    dgreenink=false;
    crimsonink=false;
    pinkink=false;
    purpleink=false;
    jgreenink=false;
    blackink=false;
    song[1].play();
song[1].rewind();
  }
  if ( mouseX>cbox10X1  && mouseX<cbox10X1+cbox10X2  && mouseY>cbox10Y1 && mouseY<cbox10Y1+cbox10Y2) {
    println("Crimson");
   whiteink=false;
    redink=false;
    dblueink=false;
    lblueink=false;
    greenink=false;
    yellowink=false;
    orangeink=false;
    greyink=false;
    brownink=false;
    dgreenink=false;
    crimsonink=true;
    pinkink=false;
    purpleink=false;
    jgreenink=false;
    blackink=false;
    song[1].play();
song[1].rewind();
  }
  if ( mouseX>cbox11X1  && mouseX<cbox11X1+cbox11X2  && mouseY>cbox11Y1 && mouseY<cbox11Y1+cbox11Y2) {
    println("Pink");
    whiteink=false;
    redink=false;
    dblueink=false;
    lblueink=false;
    greenink=false;
    yellowink=false;
    orangeink=false;
    greyink=false;
    brownink=false;
    dgreenink=false;
    crimsonink=false;
    pinkink=true;
    purpleink=false;
    jgreenink=false;
    blackink=false;
    song[1].play();
song[1].rewind();
  }
  if ( mouseX>cbox12X1  && mouseX<cbox12X1+cbox12X2  && mouseY>cbox12Y1 && mouseY<cbox12Y1+cbox12Y2) {
    println("Jungle Green");
    whiteink=false;
    redink=false;
    dblueink=false;
    lblueink=false;
    greenink=false;
    yellowink=false;
    orangeink=false;
    greyink=false;
    brownink=false;
    dgreenink=false;
    crimsonink=false;
    pinkink=false;
    purpleink=false;
    jgreenink=true;
    blackink=false;
    song[1].play();
song[1].rewind();
  }
  if ( mouseX>cbox13X1  && mouseX<cbox13X1+cbox13X2  && mouseY>cbox13Y1 && mouseY<cbox13Y1+cbox13Y2) {
    println("Purple");
   whiteink=false;
    redink=false;
    dblueink=false;
    lblueink=false;
    greenink=false;
    yellowink=false;
    orangeink=false;
    greyink=false;
    brownink=false;
    dgreenink=false;
    crimsonink=false;
    pinkink=false;
    purpleink=true;
    jgreenink=false;
    blackink=false;
    song[1].play();
song[1].rewind();
  }
  if ( mouseX>cbox14X1  && mouseX<cbox14X1+cbox14X2  && mouseY>cbox14Y1 && mouseY<cbox14Y1+cbox14Y2) {
    println("Brown");
    whiteink=false;
    redink=false;
    dblueink=false;
    lblueink=false;
    greenink=false;
    yellowink=false;
    orangeink=false;
    greyink=false;
    brownink=true;
    dgreenink=false;
    crimsonink=false;
    pinkink=false;
    purpleink=false;
    jgreenink=false;
    blackink=false;
    song[1].play();
song[1].rewind();
  }
  
  if ( mouseX>lineTH1X1  && mouseX<lineTH1X1+lineTH1X2  && mouseY>lineTH1Y1 && mouseY<lineTH1Y1+lineTH1Y2) {
 LineThickness = 1;
 song[1].play();
song[1].rewind();
  }
  if ( mouseX>lineTH2X1  && mouseX<lineTH2X1+lineTH2X2  && mouseY>lineTH2Y1 && mouseY<lineTH2Y1+lineTH2Y2) {
  LineThickness = 4;
  song[1].play();
song[1].rewind();
  }
  if ( mouseX>lineTH3X1  && mouseX<lineTH3X1+lineTH1X2  && mouseY>lineTH3Y1 && mouseY<lineTH3Y1+lineTH3Y2){
  LineThickness = 6;
  song[1].play();
song[1].rewind();
  }
  if ( mouseX>lineTH4X1  && mouseX<lineTH4X1+lineTH2X2  && mouseY>lineTH4Y1 && mouseY<lineTH4Y1+lineTH4Y2){
LineThickness = 8;
song[1].play();
song[1].rewind();
  }
  if ( mouseX>lineTH5X1  && mouseX<lineTH5X1+lineTH2X2  && mouseY>lineTH5Y1 && mouseY<lineTH5Y1+lineTH5Y2) {
LineThickness = 10;
song[1].play();
song[1].rewind();
  }
//                                             PAUSE BUTTON 
if (mouseX>width*167/200 && mouseX< width*167/200+95&& mouseY> height*119/160 && mouseY<height*119/160+95) {   //pause
    if ( song[0].isPlaying() ) {
      song[0].pause();
    } else if ( song[0].position() == song[0].length()) {
      song[0].rewind();
      song[0].play();
    } else {
      song[0].play();
    }
}
}
// Global Variables
String title= "X";
PFont quitButtonFont;
int purple = 0xff2C08FF; //Ink
int purpleQuitButton = 0xffFFDBFB;
int yellowQuitButton = 0xffFEFFDB;

public void quitButtonRect() {
  rect(width*19/20, height*0, width*1/20, height*1/20);
}
public void quitButtonSetup() {
  quitButtonFont = createFont ("Harrington", 55); //Must also Tools / Create Font / Find Font / Do Not Press "OK"
  quitButtonRect(); //Quit Button
}

public void quitButtonDraw() {
  //HoverOver
  if (mouseX >= width*19/20  && mouseX <= width && mouseY >= height*0 && mouseY <= height*1/20) {
    fill(yellowQuitButton);
    quitButtonRect();
  } else {
    fill(purpleQuitButton);
    quitButtonRect();
  }

  //Text in Quit Button
  fill(purple); //Ink, hexidecimal copied from Color Selector
  textAlign (CENTER, CENTER); //Align X&Y, see Processing.org / Reference
  //Values: [LEFT | CENTER | RIGHT] & [TOP | CENTER | BOTTOM | BASELINE]
  textFont(quitButtonFont, 20); //Change the number until it fits, largest font size
  text(title, width*19/20, height*0, width*1/20, height*1/20);
  fill(255); //Reset to white for rest of the program
}

public void quitButtonMouseClicked() {
  if (mouseX >= width*19/20  && mouseX <= width && mouseY >= height*0 && mouseY <= height*1/20) {
    exit();
  }
}
  public void settings() {  size(1200, 700); }
  static public void main(String[] passedArgs) {
    String[] appletArgs = new String[] { "--present", "--window-color=#666666", "--stop-color=#cccccc", "DrawingProgram" };
    if (passedArgs != null) {
      PApplet.main(concat(appletArgs, passedArgs));
    } else {
      PApplet.main(appletArgs);
    }
  }
}
