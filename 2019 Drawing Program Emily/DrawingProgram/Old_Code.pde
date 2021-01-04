/*
int value2 = 100;
int value3 = 100;
int value4 = 100;

 //Zoom
  //Zoom In
  fill(value2);
  rect((((width/30)*5)+(width/90)*2),(height/30),((width/30)+(width/30)),((height/30)-(height/180)));
  noFill();
   ZoomIn = loadImage("ZoomInToolButton.png");
   image(ZoomIn, (((width/30)*5)+(width/60)+(width/90)*3) , ((height/30)), ((height/30)-(height/180)) , ((height/30)-(height/180)) );
  //Zoom Out
  fill(value3);
  rect((((width/30)*5)+(width/90)*2),((height/30*2)+(height/180)),((width/30)+(width/30)),((height/30)-(height/180)));
  noFill();
   ZoomOut = loadImage("ZoomOutToolButton.png");
   image(ZoomOut, (((width/30)*5)+(width/60)+(width/90)*3) , (((height/30)*2)+height/180), ((height/30)-(height/180)) , ((height/30)-(height/180)) );
 //Colour Picker?
  fill(value4);
  rect((((width/30)*7)+(width/90)*3),(height/30),((width/30)+(width/30)),((height/30)+(height/30)));
  noFill();
   ColourPicker = loadImage("ColourPickerToolButton.png");
   image(ColourPicker, (((width/30)*7)+(width/60)+(width/90)*3) , ((height/30)+height/180), ((width/30)) , ((width/30)) );

*/
/*
 //Zoom Buttons
  //Zoom In
  if (mouseX > ((width/30)*5)+((width/90)*2) && mouseX < ((width/30)*7)+((width/90)*2) && mouseY > (height/30) && mouseY < ((height/30)*2)-(height/180)   ) {
    value2 = 60;
  } else {
    value2 = 100;
  }
  //Zoom Out
  if (mouseX > ((width/30)*5)+((width/90)*2) && mouseX < ((width/30)*7)+((width/90)*2) && mouseY > (height/30*2)+(height/180) && mouseY < ((height/30)*3)  ) {
    value3 = 60;
  } else {
    value3 = 100;
  }
 //Colour Picker Button
  if (mouseX > ((width/30)*7)+((width/90)*3) && mouseX < ((width/30)*9)+((width/90)*3) && mouseY > (height/30) && mouseY < ((height/30)*3)) {
    value4 = 60;
  } else {
    value4 = 100;
  }
*/
/*

*/






/*
float zoom = 1;
final static float inc = .05;
final static short sz  = 30;

void setup() {
  size(240, 240);
  smooth();
  rectMode(CENTER);
}

void draw() {
  background(200);

  if (mousePressed)
    if      (mouseButton == LEFT)   zoom += inc;
    else if (mouseButton == RIGHT)  zoom -= inc;

  translate(width>>1, height>>1);
  scale(zoom);
  println(zoom);

  rect(0, 0, sz, sz);
*/

/*
boolean Pen = false;
boolean Eraser = false;
boolean ZoomIn = false;
boolean ZoomOut = false;
boolean Clear = false;
*/
/*
 //Buttons  
  float spacing = 1;
  for (int i = 0; i <= 4; i = i+1) {
   fill(value);
   rect( ((width/30)*spacing) , (height/30) , ((width/30)+(width/30)) , ((height/30)+(height/30)) );
   spacing = spacing + 2.5;
  }
*/
/*
 //Buttons
  float spacing = 1;
  for (int i = 0; i <= 4; i = i+1) {
   fill(100);
   rect( ((width/30)*spacing) , (height/30) , ((width/30)+(width/30)) , ((height/30)+(height/30)) );
   spacing = spacing + 2.5;
  }
*/ 
/*
//Buttons
//Pen -(15,5,20,15)
  fill(value);
  rect((width/30),(height/30),((width/30)+(width/30)),((height/30)+(height/30)));
  noFill();
  
//Eraser -(40,5,20,15)
  fill(value1);
  rect((((width/30)*3)+width/90),(height/30),((width/30)+(width/30)),((height/30)+(height/30)));
  noFill();
  
//Colour Picker -(65,5,20,15)
  fill(value2);
  rect((((width/30)*5)+(width/90)*2),(height/30),((width/30)+(width/30)),((height/30)+(height/30)));
  noFill();
  
//Zoom -(90,5,20,15)
  fill(value3);
  rect((((width/30)*7)+(width/90)*3),(height/30),((width/30)+(width/30)),((height/30)+(height/30)));
  noFill();
*/
 
/*
 //Button Change
 //Pen Button
  if (mouseX > (width/30) && mouseX < ((width/30)*3) && mouseY > (height/30) && mouseY < ((height/30)*3)) {
    value = 60;
  } else {
    value = 100;
  }
 //Eraser Button 
  if (mouseX > (((width/30)*3)+width/90) && mouseX < (((width/30)*5)+width/90) && mouseY > (height/30) && mouseY < ((height/30)*3)) {
    value1 = 60;
  } else {
    value1 = 100;
  }
 //Colour Picker Button
  if (mouseX > ((width/30)*5)+((width/90)*2) && mouseX < ((width/30)*7)+((width/90)*2) && mouseY > (height/30) && mouseY < ((height/30)*3)) {
    value2 = 60;
  } else {
    value2 = 100;
  }
 //Zoom Button
  if (mouseX > ((width/30)*7)+((width/90)*3) && mouseX < ((width/30)*9)+((width/90)*3) && mouseY > (height/30) && mouseY < ((height/30)*3)) {
    value3 = 60;
  } else {
    value3 = 100;
  }
*/
/*
 //Button Change
    //Pen
  if (mouseX > (width/30) && mouseX < ((width/30)*3) && mouseY > (height/30) && mouseY < ((height/30)*3)) {
    Pen = true;
    Eraser = false;
    ZoomIn = false;
    ZoomOut = false;
  } //Eraser
  else if (mouseX > (((width/30)*3)+width/90) && mouseX < (((width/30)*5)+width/90) && mouseY > (height/30) && mouseY < ((height/30)*3)) {
    Pen = false;
    Eraser = true;
    ZoomIn = false;
    ZoomOut = false;   
  } //ZoomIn
  else if (mouseX > ((width/30)*5)+((width/90)*2) && mouseX < ((width/30)*7)+((width/90)*2) && mouseY > (height/30) && mouseY < ((height/30)*3)) {
    Pen = false;
    Eraser = false;
    ZoomIn = true;
    ZoomOut = false;
  } //ZoomOut
  else if (mouseX > ((width/30)*7)+((width/90)*3) && mouseX < ((width/30)*9)+((width/90)*3) && mouseY > (height/30) && mouseY < ((height/30)*3)) {
    Pen = false;
    Eraser = false;
    ZoomIn = false;
    ZoomOut = true;
  }
*/