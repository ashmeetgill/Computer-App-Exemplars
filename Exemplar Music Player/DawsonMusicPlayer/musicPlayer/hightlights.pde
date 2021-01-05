void highlightDraw () {
  if (loop == 1) {

    stroke (255, 255, 255);//loop button highlight
    strokeWeight (3);
    line(width*4/16, height*10/16, width*4/16, height*11/16 );
    line(width*5/16, height*10/16, width*5/16, height*11/16 );
    line(width*4/16, height*11/16, width*5/16, height*11/16 );
    line(width*4/16, height*10/16, width*5/16, height*10/16 );
  } else {
    if (mouseX>width*4/16 && mouseX<width*5/16 && mouseY>height*10/16 && mouseY<height*11/16) {
      stroke (123, 123, 123);//loop button highlight
      strokeWeight (3);
      line(width*4/16, height*10/16, width*4/16, height*11/16 );
      line(width*5/16, height*10/16, width*5/16, height*11/16 );
      line(width*4/16, height*11/16, width*5/16, height*11/16 );
      line(width*4/16, height*10/16, width*5/16, height*10/16 );
    } else {
      stroke (0, 0, 0);//loop button highlight
      strokeWeight (3);
      line(width*4/16, height*10/16, width*4/16, height*11/16 );
      line(width*5/16, height*10/16, width*5/16, height*11/16 );
      line(width*4/16, height*11/16, width*5/16, height*11/16 );
      line(width*4/16, height*10/16, width*5/16, height*10/16 );
    }
  }
  if (shuffle == 1) {

    stroke (255, 255, 255);//shuffle button highlight
    strokeWeight (3);
    line(width*4/16, height*10/16, width*4/16, height*11/16 );
    line(width*3/16, height*10/16, width*3/16, height*11/16 );
    line(width*4/16, height*11/16, width*3/16, height*11/16 );
    line(width*4/16, height*10/16, width*3/16, height*10/16 );
  } else {
    if (mouseX>width*3/16 && mouseX<width*4/16 && mouseY>height*10/16 && mouseY<height*11/16) {
      stroke (123, 123, 123);//shuffle button highlight
      strokeWeight (3);
      line(width*4/16, height*10/16, width*4/16, height*11/16 );
      line(width*3/16, height*10/16, width*3/16, height*11/16 );
      line(width*4/16, height*11/16, width*3/16, height*11/16 );
      line(width*4/16, height*10/16, width*3/16, height*10/16 );
    } else {
      stroke (0, 0, 0);//shuffle button highlight
      strokeWeight (3);
      line(width*4/16, height*10/16, width*4/16, height*11/16 );
      line(width*3/16, height*10/16, width*3/16, height*11/16 );
      line(width*4/16, height*11/16, width*3/16, height*11/16 );
      line(width*4/16, height*10/16, width*3/16, height*10/16 );
    }
  }

  if (mouseX>width*8/16 && mouseX<width*13/16 && mouseY>height*10/16 && mouseY<height*12/16) {
    stroke (123, 123, 123);//pause/play button highlight
    strokeWeight (3);
    line (width*8/16, height*10/16, width*8/16, height*12/16);
    line (width*13/16, height*10/16, width*13/16, height*12/16);
    line (width*13/16, height*10/16, width*8/16, height*10/16);
    line (width*8/16, height*12/16, width*13/16, height*12/16);
  } else {
    stroke (0, 0, 0);
    strokeWeight (3);
    line (width*8/16, height*10/16, width*8/16, height*12/16);
    line (width*13/16, height*10/16, width*13/16, height*12/16);
    line (width*8/16, height*12/16, width*13/16, height*12/16);
    line (width*8/16, height*10/16, width*13/16, height*10/16);
  } 
  if (mouseX>width*13/16 && mouseX<width && mouseY>height*10/16 && mouseY<height*12/16) {
    stroke (123, 123, 123);//next button highlight
    strokeWeight (3);
    line (width, height*10/16, width, height*12/16);
    line (width*13/16, height*10/16, width*13/16, height*12/16);
    line (width*13/16, height*10/16, width, height*10/16);
    line (width, height*12/16, width*13/16, height*12/16);
  } else {
    stroke (0, 0, 0);
    strokeWeight (3);
    line (width, height*10/16, width, height*12/16);
    line (width*13/16, height*10/16, width*13/16, height*12/16);
    line (width, height*12/16, width*13/16, height*12/16);
    line (width, height*10/16, width*13/16, height*10/16);
  } 
  if (mouseX>width*5/16 && mouseX<width*8/16 && mouseY>height*10/16 && mouseY<height*12/16) {
    stroke (123, 123, 123);//prev button highlight
    strokeWeight (3);
    line (width*8/16, height*10/16, width*8/16, height*12/16);
    line (width*5/16, height*10/16, width*5/16, height*12/16);
    line (width*5/16, height*10/16, width*8/16, height*10/16);
    line (width*8/16, height*12/16, width*5/16, height*12/16);
  } else {
    stroke (0, 0, 0);
    strokeWeight (3);
    line (width*8/16, height*10/16, width*8/16, height*12/16);
    line (width*5/16, height*10/16, width*5/16, height*12/16);
    line (width*8/16, height*12/16, width*5/16, height*12/16);
    line (width*8/16, height*10/16, width*5/16, height*10/16);
  }
}
