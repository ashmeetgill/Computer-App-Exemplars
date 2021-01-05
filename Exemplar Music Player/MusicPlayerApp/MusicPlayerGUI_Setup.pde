color red2 = #FF0000;
color green = #0AFF32;
color regularButton2 = red2;
color hoverOverButton2 = green;
PImage pic1;
PImage pic2;
PImage pic3;
PImage pic4;
PImage pic5;
PImage Loop;
PImage CS10;

void musicPlayerGUI_Setup() {
  background(193, 193, 193);
  rect(width*0, height*14/16 + height*1/22, width*1/16, width*1/16); // logo
  CS10= loadImage("CS10.png");
  image(CS10, width*0, height*14/16 + height*1/22, width*1/16, width*1/16);
  fill(210, 210, 210);
  rect(width*1/16, height*14/16 + height*1/22, width*15/16, width*1/16);//bottom bar
  fill(40);
  rect(width*9/16 + width*1/25, height*14/16 + height*1/18, width*5/16, width*1/23); //song bar
  fill(40, 40, 40);
  rect(width*0, height*1/16, width*1/16, height*13/16 + height*1/22); // left bar (black)
  fill(255, 255, 255);
  ellipse(width*4/16 - width*1/40, height*14/16 + height*1/12, width*1/16 - width*1/60, width*1/16 - width*1/60); //play
  ellipse(width*3/16 - width*1/40, height*14/16 + height*1/12, width*1/16 - width*1/50, width*1/16 - width*1/50); //back
  ellipse(width*5/16 - width*1/40, height*14/16 + height*1/12, width*1/16 - width*1/50, width*1/16 - width*1/50); //next
  ellipse(width*9/16 + width*1/100, height*14/16 + height*1/12, width*1/16 - width*1/50, width*1/16 - width*1/50); //stop
  ellipse(width*15/16 + width*1/60, height*14/16 + height*1/12, width*1/16 - width*1/50, width*1/16 - width*1/50);//Loop
  Loop= loadImage("Loop.png");
  image(Loop, width*15/16 - width*1/300, height*15/16 - height*1/145, width*1/16 - width*1/50, width*1/16 - width*1/50);

  //--------------------Making_A_New_Button-------------------------
  rect(width*13/16, height*10/16, width*2/16, width*1/16);
  //----------------------------------------------------------------

  //forward and back Buttons
  fill(255);
  ellipse(width*0.5/16, height*2/16, width*1/16 - width*1/50, width*1/16 - width*1/50);//forward
  fill(0);
  text("F", 25, 93);
  fill(255);
  ellipse(width*0.5/16, height*3/16 + height*1/40, width*1/16 - width*1/50, width*1/16 - width*1/50);//back
  fill(0);
  text("B", 25, 155);
  fill(255);
  //---------------------------Box_1-----------------------------------
  rect(width*3/16, height*2/16, width*3/16, width*4/16, 15);
  pic1= loadImage("maxresdefault.jpg"); // Dimensions width 1280 height 720
  image(pic1, width*3/16, height*2/16, width*3/16, width*4/16);
  fill(33);
  text("5PM - Animal Crossing New Leaf Music", width*3/16, height*7/16 + height*1/35);
  fill(140);
  text("Official Music for", width*3/16 + width*1/50, height*8/16 - height*1/55);
  text("Animal Crossing New Leaf", width*3/16 + width*1/50, height*8.3/16 - height*1/55);
  fill(255);
  //---------------------------Box_2-----------------------------------  
  rect(width*7/16, height*2/16, width*3/16, width*4/16, 15);
  pic2= loadImage("artworks-000223021540-8d5u8n-t500x500.jpg"); // Dimensions width 500 height 500
  image(pic2, width*7/16, height*2/16, width*3/16, width*4/16);
  fill(33);
  text("bittersweet chocolate", width*7/16 + width*1/50, height*7/16 + height*1/35);
  fill(140);
  text("artist: mr. hong", width*7/16 + width*1/50, height*8/16 - height*1/55);
  fill(255);

  //---------------------------Box_3-----------------------------------
  rect(width*11/16, height*2/16, width*3/16, width*4/16, 15);
  pic3= loadImage("artworks-000316020288-91k6ia-t500x500.jpg"); // Dimensions width 500 height 500
  image(pic3, width*11/16, height*2/16, width*3/16, width*4/16);
  fill(33);
  text("sometimes", width*11/16 + width*1/50, height*7/16 + height*1/35);
  fill(140);
  text("artist: stream_error", width*11/16 + width*1/50, height*8/16 - height*1/55);
  fill(255);

  //---------------------------Box_4-----------------------------------
  rect(width*5/16, height*9/16 - height*1/24, width*3/16, width*4/16, 15);
  pic4= loadImage("sddefault.jpg"); // Dimensions width 640 height 480
  image(pic4, width*5/16, height*9/16 - height*1/24, width*3/16, width*4/16);
  fill(33);
  text("I like, like you chill out", width*5/16 + width*1/50, height*13/16 + height*1/19);
  text("music beats to studyrelax", width*5/16 + width*1/50, height*13/16 + height*1.3/19);
  fill(140);
  text("artist: Kenai", width*5/16 + width*1/50, height*13/16 + height*1.2/14);
  fill(255);

  //---------------------------Box_5-----------------------------------
  rect(width*9/16, height*9/16 - height*1/24, width*3/16, width*4/16, 15);
  pic5= loadImage("maxresdefault (1).jpg"); // Dimensions width 1280 height 720
  image(pic5, width*9/16, height*9/16 - height*1/24, width*3/16, width*4/16);
  fill(33);
  text("SAD! (XXXTentacion Cover)", width*9/16 + width*1/50, height*13/16 + height*1/19);
  fill(140);
  text("artist: Bryce Fox", width*9/16 + width*1/50, height*13/16 + height*1/14);
  fill(255);
}
