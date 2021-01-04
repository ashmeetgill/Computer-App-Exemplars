/*
To Do-
-Make a save to desktop function ??
-Fix move int. Rectify global variable needs w/ ablities
-Finish slider (/\) ????????
-Finish 2d (WR)
-Update 2e (WR)
*/

int value = 100;
int value1 = 100;
int value2 = 100;
int LineWidth = 10;
int colour = 110;

//Zoom function

color clear = color(198, 6, 65);
color clear2 = color(155, 4, 42);

//int Button = 100;
//int Pressed = 60;

PImage Pen;
PImage Eraser;


void setup() {
  fullScreen();
  //size(500, 600);
  background(51);
  rect((width/15),(height/15),(width-((width/15)*2)),(height-((height/15)*2)));
  
  
  
} //End setup


void draw() {

  
//'Canvas'  
  fill(51);
  stroke(51); 
   rect(0,0,(width/15),height); //Left
   rect(0,(height-(height/15)),width,(height/15)); //Bottom
   rect(width-(width/15),0,width,height); //Right
   rect(0,0,width,height/15 ); //Top
  stroke(0);

//Buttons 
 //Clear 
  strokeWeight(1.0);   
  fill(clear);
  rect((width-(((width/30)*3))),(height/30),((width/30)+(width/30)),((height/30)+(height/30)));
  noFill();
 //Pen 
  fill(value);
  rect((width/30),(height/30),((width/30)+(width/30)),((height/30)+(height/30)));
  noFill();
   Pen = loadImage("PencilToolButton.png");
   image(Pen, (width/30+((width/60))) , ((height/30)+height/180), ((width/30)) , ((width/30)) );
 //Eraser
  fill(value1);
  rect((((width/30)*3)+width/90),(height/30),((width/30)+(width/30)),((height/30)+(height/30)));
  noFill();
   Eraser = loadImage("EraserToolButton.png");
   image(Eraser, (((width/30)*3)+(width/60)+width/90) , ((height/30)+height/180), ((width/30)) , ((width/30)) ); 
 
  
  
}//End of Draw


void mouseDragged() {

    
//Draw
   strokeWeight(LineWidth);
    if (value == 60) {
     line(pmouseX, pmouseY, mouseX, mouseY);
    }
    if (value1 == 60) {
     stroke(255);
     line(pmouseX, pmouseY, mouseX, mouseY);
    }
   stroke(0);
   strokeWeight(1.0);

} //End of mouseDragged

void mouseClicked() {

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

 //Clear Button
  if (mouseX > (width-(((width/30)*3))) && mouseX < (width-(((width/30)*3)))+(width/30+(((width/30)))) && mouseY > (height/30) && mouseY < ((height/30)+(height/30))) {
    fill(255);
    //rect((width/15),(height/15),(width-((width/15)*2)),(height-((height/15)*2)));
    rect(0,0,width,height);
  }
    

     

 
} //End of mouseClicked 
