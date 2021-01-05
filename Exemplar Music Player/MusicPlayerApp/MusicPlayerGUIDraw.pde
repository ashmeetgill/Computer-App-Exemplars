void MusicPlayerGUIDraw () {
  //PlayButton
  if (mouseX>width*3/15 && mouseX<width*3.7/15 && mouseY>height*23.1/25 && mouseY<height*20.6/21) {
    fill(hoverOverButton2);
    ellipse(width*4/16 - width*1/40, height*14/16 + height*1/12, width*1/16 - width*1/60, width*1/16 - width*1/60);
    fill(255, 255, 255);
    triangle(width*4/19 + width*1/200, height*39/40 - height*1/24, width*4/19 + width*2/60, height*34/35 - height*2/100, width*4/19 + width*1/200, height*39/40);
  } else {
    fill(regularButton2);
    ellipse(width*4/16 - width*1/40, height*14/16 + height*1/12, width*1/16 - width*1/60, width*1/16 - width*1/60);
    fill(255, 255, 255);
    triangle(width*4/19 + width*1/200, height*39/40 - height*1/24, width*4/19 + width*2/60, height*34/35 - height*2/100, width*4/19 + width*1/200, height*39/40);
  }
  if (playButton == false) {
    triangle(width*4/19 + width*1/200, height*39/40 - height*1/24, width*4/19 + width*2/60, height*34/35 - height*2/100, width*4/19 + width*1/200, height*39/40);
  } else {
    fill(regularButton2);
    ellipse(width*4/16 - width*1/40, height*14/16 + height*1/12, width*1/16 - width*1/60, width*1/16 - width*1/60);
    fill(0);
    rect(width*10/40 - width*0.8/40, height*15/16 - height*1/400, width*1/100, width*3/100);
    rect(width*10/40 - width*2.1/60, height*15/16 - height*1/400, width*1/100, width*3/100);
  }
  if (playButton == true) {
    if (mouseX>width*3/15 && mouseX<width*3.7/15 && mouseY>height*23.1/25 && mouseY<height*20.6/21) {
      fill(hoverOverButton2);
      ellipse(width*4/16 - width*1/40, height*14/16 + height*1/12, width*1/16 - width*1/60, width*1/16 - width*1/60);
      fill(0);
      rect(width*10/40 - width*0.8/40, height*15/16 - height*1/400, width*1/100, width*3/100);
      rect(width*10/40 - width*2.1/60, height*15/16 - height*1/400, width*1/100, width*3/100);
    }
  }

  //Next Button
  if (mouseX>width*4/15 && mouseX<width*4.6/15 && mouseY>height*23.1/25 && mouseY<height*20.6/21) { //Next Button
    fill(hoverOverButton2);
    ellipse(width*5/16 - width*1/40, height*14/16 + height*1/12, width*1/16 - width*1/50, width*1/16 - width*1/50);
    fill(255, 255, 255);
    triangle(width*5/19 + width*1/65, height*39/40 - height*1/24, width*5/19 + width*2/55, height*34/35 - height*2/100, width*5/19 + width*1/65, height*39/40);
    rect(width*13/40 - width*1.1/40, height*15/16 - height*1/400, width*0.5/100, width*3/100);
  } else {
    fill(regularButton2);
    ellipse(width*5/16 - width*1/40, height*14/16 + height*1/12, width*1/16 - width*1/50, width*1/16 - width*1/50);
    fill(255, 255, 255);
    triangle(width*5/19 + width*1/65, height*39/40 - height*1/24, width*5/19 + width*2/55, height*34/35 - height*2/100, width*5/19 + width*1/65, height*39/40);
    rect(width*13/40 - width*1.1/40, height*15/16 - height*1/400, width*0.5/100, width*3/100);
  }
  //Back Button
  if (mouseX>width*2/15 && mouseX<width*2.8/15 && mouseY>height*23.1/25 && mouseY<height*20.6/21) { //Next Button
    fill(hoverOverButton2);
    ellipse(width*3/16 - width*1/40, height*14/16 + height*1/12, width*1/16 - width*1/50, width*1/16 - width*1/50);
    fill(255, 255, 255);
    triangle(width*3/19 + width*1/65, height*39/40 - height*1/24, width*2.3/19 + width*2/55, height*34/35 - height*2/100, width*3/19 + width*1/65, height*39/40);
    rect(width*7/40 - width*0.9/40, height*15/16 - height*1/400, width*0.5/100, width*3/100);
  } else {
    fill(regularButton2);
    ellipse(width*3/16 - width*1/40, height*14/16 + height*1/12, width*1/16 - width*1/50, width*1/16 - width*1/50);
    fill(255, 255, 255);
    triangle(width*3/19 + width*1/65, height*39/40 - height*1/24, width*2.3/19 + width*2/55, height*34/35 - height*2/100, width*3/19 + width*1/65, height*39/40);
    rect(width*7/40 - width*0.9/40, height*15/16 - height*1/400, width*0.5/100, width*3/100);
  }

  //Stop
  if (mouseX>width*8.2/15 && mouseX<width*8.9/15 && mouseY>height*23.1/25 && mouseY<height*20.6/21) { //Next Button
    fill(hoverOverButton2);
    ellipse(width*9/16 + width*1/100, height*14/16 + height*1/12, width*1/16 - width*1/50, width*1/16 - width*1/50);
    fill(0);
    rect(width*9/16 - width*1/400, height*15/16 + height*1/400, width*0.4/16, width*0.4/16);
  } else {
    fill(regularButton2);
    ellipse(width*9/16 + width*1/100, height*14/16 + height*1/12, width*1/16 - width*1/50, width*1/16 - width*1/50);
    fill(0);
    rect(width*9/16 - width*1/400, height*15/16 + height*1/400, width*0.4/16, width*0.4/16);
  }
  //Visualzer
  fill(200);
  rect(width*0, height*0/16, width*16/16, width*0.9/16);

  
  //Song1
   if ( song[0].isPlaying() )
   {
   fill(255);
   text("Now Playing", 180, 80 );
   } else
   {
   noStroke();
   fill(193);
   rect(width*3/16, height*1.3/16, width*2/16, width*0.5/16);
   stroke(1);
   }
   
  //Song2
  /*
  if ( song[1].isPlaying() ) //This won't work because when more then one "Now Playing" code.
   {
   text("Now Playing", 250, 80 );
   }
   else
   {
   noStroke();
   fill(193);
   rect(width*3/16, height*0.7/16, width*2/16, width*0.5/16);
   stroke(1);
   }
   */
}
