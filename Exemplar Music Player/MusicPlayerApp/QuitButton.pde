//Global Variables
color red = #FF0000;
color ablue = #EAEAEA;
color regularButton = ablue;
color hoverOverButton = red;

void quitButtonDraw () {
  //println("Mousex:", mouseX, "\tMouseY:", mouseY);
  fill(regularButton);
  rect(width*13/16, height*10/16, width*2/16, width*1/16);
  fill(0, 0, 0);
  if ( (mouseX > width*27.6/34 && mouseX<width*30/32 && mouseY > height*21/34 &&mouseY < height*24/34)) {
    fill(hoverOverButton);
    rect(width*13/16, height*10/16, width*2/16, width*1/16);
    fill(0, 0, 0);
    textSize(12);
    text("are you sure?", width*13.2/16, height*21.5/32);
  } else {
    fill(regularButton);
    rect(width*13/16, height*10/16, width*2/16, width*1/16);
    fill(0, 0, 0);
    textSize(13);
    text("Quit", width*13.6/16, height*21.5/32);
    
  }
}

void quitButtonMouseClicked() {
  if (mouseX > width*27.6/34 && mouseX<width*30/32 && mouseY > height*21/34 &&mouseY < height*24/34) {
    soundClose.play();
    soundClose.rewind();
    exit();
  }
}
