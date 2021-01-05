color TBlue = color(0,22,224,30);
color DeepBlue = #0016e0;
color nonHover = TBlue ;
color Hover = DeepBlue ;
PFont quitFont;
color goldenBrown = #EDC600;
void quitButtonSetup() {
}
void quitButtonDraw () {
  strokeWeight(0);
  quitFont = createFont ("Onyx", 150);
  if (mouseX>width*14/16 && mouseY<height/16) {
    fill(Hover);
    rect(width*14/16, 0, width, height/16);
    fill(goldenBrown);
    textAlign(CENTER, BOTTOM);
    textFont(quitFont, 45);
    text("quit", width*15/16, height/16);
  } else {
    fill(nonHover);
    rect(width*14/16, 0, width, height/16);
    fill(Hover);
    fill(237,198,0,50);
    textAlign(CENTER, BOTTOM);
    textFont(titleFont, 45);
    text("quit", width*15/16, height/16);
  }
}

void quitClick() {
  if (mouseX>width*14/16 && mouseY<height/16) {
    exit();
  }
}
