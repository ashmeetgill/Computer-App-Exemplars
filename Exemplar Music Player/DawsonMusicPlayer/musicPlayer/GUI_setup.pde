int DVar1 = 0;
PFont titleFont;

void GUI_setup () {
  titleFont = createFont ("Onyx", 150);
  textFont(titleFont, 45);
  imageMode(CORNERS);
  shuffleIMG = loadImage ("shuffle.png");
  loopIMG = loadImage("loop.png");
  youtube = loadImage("youtube.png");
  left = loadImage("left_arrow.png");
  right = loadImage("right_arrow.png");
  line (width*5/16, 0, width*5/16, height);
  line (0, height*10/16, width, height*10/16);
  while (DVar1 < 10) { //song list
    line (0, height*DVar1/16, width*5/16, height*DVar1/16);
    triangle(width*9/32, height*(DVar1+1)/16, width*9/32, height*(DVar1+2)/16, width*10/32, height*(DVar1+1.5)/16);
    DVar1 += 2;
  }
  text ("Powerup!", width*2/16, height*1/16);
  text ("Inevitable", width*2/16, height*3/16);
  text ("Motion Sickness", width*2/16, height*5/16);
  text ("Nothin Yet", width*2/16, height*7/16);
  text ("Databytez", width*2/16, height*9/16);
  rectMode(CORNERS);
  image (shuffleIMG,width*4/16, (height*11/16), width*3/16, (height*10/16) );//shuffle button space
  image (loopIMG, width*4/16, (height*11/16), width*5/16, (height*10/16) );//loop button space
  line (width*5/16, height*12/16, width, height*12/16);//next, prev, and pause/play button space
  line (width*8/16, height*10/16, width*8/16, height*12/16);
  line (width*13/16, height*10/16, width*13/16, height*12/16);
  image (left,width*5/16,height,width*7.5/16,height*14.5/16);
  image (right,width,height,width*13.5/16,height*14.5/16);

  line (width/32, height*15/16, width*9/32, height*15/16);//audiograph

  strokeWeight(10);
  line (width*39/64, height*21/32, width*39/64, height*22/32);//pause/play button shapes
  line (width*40/64, height*21/32, width*40/64, height*22/32);
  line (width*41/64, height*22/32, width*42/64, height*21/32);
  strokeWeight(1);
  triangle (width*43/64, height*20.7/32, width*43/64, height*22.2/32, width*44.5/64, height*43/64);

  strokeWeight(10);
  line (width*25/64, height*21/32, width*25/64, height*22/32); //prev song button shapes
  strokeWeight(1);
  triangle (width*27/64, height*20.7/32, width*25.5/64, height*21.5/32, width*27/64, height*22.3/32);

  strokeWeight(10);
  line (width*59/64, height*21/32, width*59/64, height*22/32); //next song button shapes
  strokeWeight(1);
  triangle (width*57/64, height*20.7/32, width*58.5/64, height*21.5/32, width*57/64, height*22.3/32);

  strokeWeight(1);
}
