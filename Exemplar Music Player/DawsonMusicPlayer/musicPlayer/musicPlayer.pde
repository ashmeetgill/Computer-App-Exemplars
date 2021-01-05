//all credit for music goes to the Youtube Audio Library
//everything else was 100% me
//Dawson Murray
import ddf.minim.*;
import ddf.minim.analysis.*;
import ddf.minim.effects.*;
import ddf.minim.signals.*;
import ddf.minim.spi.*;
import ddf.minim.ugens.*;
Minim minim;
int totalSongs = 5;
int songN = totalSongs - totalSongs;
PImage loopIMG;
PImage youtube;
PImage shuffleIMG;
PImage left;
PImage right;
int loop = 0;
int shuffle = 0;
float DVar2 =185;
float DVar3 = 0;
AudioPlayer[] song = new AudioPlayer[totalSongs];


void setup() {
  size (1200, 800);
  background(180);
  GUI_setup();
  minim = new Minim(this);
  song[0] = minim.loadFile("Powerup.mp3");
  song[1] = minim.loadFile("Inevitable.mp3");
  song[2] = minim.loadFile("Motion_Sickness.mp3");
  song[3] = minim.loadFile("Nothin_Yet.mp3");
  song[4] = minim.loadFile("Databytez.mp3");
}
void draw() {
    for (int i = 0; i < song[songN].bufferSize() - 1; i++)
  {
  }
  float posx = map(song[songN].position(), 0, song[songN].length(), width*6/16, width*15/16);
  highlightDraw ();

fill(DVar2,0,0);
  if (DVar2 >= 225) {DVar3=1;}
  else {if (DVar2 <= 165) DVar3=0;}
  if (DVar3 == 1) {DVar2+= -0.75;}
  else {if (DVar3 == 0) DVar2+= 0.75;}
  
    strokeWeight(0);
    rect (width*5.1/16, 0, width*15.9, height*9.9/16); 
    strokeWeight(1);
    
    image (youtube, width*7.5/16, height/16, width*13.5/16, height*8/16);//album cover space
    quitButtonDraw ();

  if (shuffle==1) loop=0;
  if (song[songN].position() >= song[songN].length()-500 && songN != totalSongs - 1) {
    if (shuffle == 1) {
      song[songN].pause();
      song[songN].rewind();
      songN = int(random(0, 5)); 
      song[songN].play();
    } else { 
      if (shuffle == 0) {
        if (loop == 1) {
          song[songN].pause();
          song[songN].rewind();
          song[songN].play();
        } 
        if (loop==0) {
          song[songN].pause();
          song[songN].rewind();
          songN += 1; 
          ;
          song[songN].play();
        }
      }
    }
  }
  if (song[songN].position() >= song[songN].length()-500 && songN == totalSongs - 1) {
    if (shuffle == 1) {
      song[songN].pause();
      song[songN].rewind();
      songN = int(random(0, 5)); 
      song[songN].play();
    } else {
      if (shuffle==0) {
        if (loop == 1) {
          song[songN].pause();
          song[songN].rewind();
          song[songN].play();
        } 
        if (loop==0) {
          song[songN].pause();
          song[songN].rewind();
          songN = 0; 
          ;
          song[songN].play();
        }
      }
    }
  }
  stroke (0, 0, 0);
  strokeWeight(1);
  fill(180);
  rect (width*5.75/16, height*13.5/16, width*15.25/16, height*14.5/16);
  rect (width*5.5/16, height*25/32, width*6.5/16, height*27/32);
  rect (width*14.5/16, height*25/32, width*15.5/16, height*27/32);
  line (width*6/16, height*14/16, width*15/16, height*14/16);
  float songPOS = song[songN].position();
  float songlength = song[songN].length();
  fill(255);
  text ((songPOS/1000)/60, width*6/16, height*27/32);
  text ((songlength/1000)/60, width*15/16, height*27/32);
  ellipse(posx, height*14/16, height*0.02, height*0.02);
}

void keyPressed() {
  float songlength = song[songN].length();
  float songPOS = song[songN].position();
  if ( key == 'f' || key == 'F') song[songN].skip(int(songlength-songPOS-10000));
  if ( key == 'g' || key == 'G') song[songN].skip(-1000);
}

void mouseClicked() {
  if (mouseX>width*5/16 && mouseX<width*7.5/16 && mouseY<height && mouseY>height*14.5/16) song[songN].skip(-3000);
  if (mouseX>width*13.5/16 && mouseX<width && mouseY<height && mouseY>height*14.5/16) song[songN].skip(6000);
  if (mouseX>width*14/16 && mouseY<height/16) {//quit buttton
    quitClick();
  }
  if (mouseX>width*4/16 && mouseX<width*5/16 && mouseY>height*10/16 && mouseY<height*11/16) {
    if (loop == 0) {
      loop = 1;
    } else {
      loop = 0;
    }
  }
  if (mouseX>width*3/16 && mouseX<width*4/16 && mouseY>height*10/16 && mouseY<height*11/16) {
    if (shuffle == 0) {
      shuffle = 1;
    } else {
      shuffle = 0;
    }
  } 
  if (mouseX>width*9/32 && mouseX<width*10/32 && mouseY>height*1/16 && mouseY<height*2/16) {
    song[songN].pause();
    song[songN].rewind();
    songN = 0;
    song[songN].play();
  }
  if (mouseX>width*9/32 && mouseX<width*10/32 && mouseY>height*3/16 && mouseY<height*4/16) {
    song[songN].pause();
    song[songN].rewind();
    songN = 1;
    song[songN].play();
  }
  if (mouseX>width*9/32 && mouseX<width*10/32 && mouseY>height*5/16 && mouseY<height*6/16) {
    song[songN].pause();
    song[songN].rewind();
    songN = 2;
    song[songN].play();
  }
  if (mouseX>width*9/32 && mouseX<width*10/32 && mouseY>height*7/16 && mouseY<height*8/16) {
    song[songN].pause();
    song[songN].rewind();
    songN = 3;
    song[songN].play();
  }
  if (mouseX>width*9/32 && mouseX<width*10/32 && mouseY>height*9/16 && mouseY<height*10/16) {
    song[songN].pause();
    song[songN].rewind();
    songN = 4;
    song[songN].play();
  }
  if (mouseX>width*8/16 && mouseX<width*13/16 && mouseY>height*10/16 && mouseY<height*12/16) {
    if ( song[songN].position() == song[songN].length() ) {//start pause/play button code
      song[songN].rewind();
      song[songN].play();
    } else {
      if ( song[songN].isPlaying() ) {
        song[songN].pause();
      } else {
        song[songN].play();
      }
    }
  }
  //end pause/play button code
  if (mouseX>width*13/16 && mouseX<width && mouseY>height*10/16 && mouseY<height*12/16) {
    if (shuffle == 1) {
      song[songN].pause();
      song[songN].rewind();
      songN = int(random(0, 5)); 
      song[songN].play();
    } else {
      if (songN != totalSongs -1) {
        if ( song[songN].isPlaying() ) {
          song[songN].pause();//start next button code
          song[songN].rewind();
          songN += 1; 
          song[songN].play();
        }
        if ( !song[songN].isPlaying() ) {
          song[songN].rewind();
          songN += 1;
        }
      } else {
        if ( song[songN].isPlaying() ) {
          song[songN].pause();
          song[songN].rewind();
          songN = 0;
          song[songN].play();
        }
        if ( !song[songN].isPlaying() ) {
          song[songN].rewind();
          songN = 0;
        }
      }//end next button code
    }
  }
  if (mouseX>width*5/16 && mouseX<width*8/16 && mouseY>height*10/16 && mouseY<height*12/16) {
    if (shuffle == 1) {
      song[songN].pause();
      song[songN].rewind();
      songN = int(random(0, 5)); 
      song[songN].play();
    } else {
      if (songN != 0) {
        if ( song[songN].isPlaying() ) {
          song[songN].pause();//start prev button code
          song[songN].rewind();
          songN = songN - 1;
          song[songN].play();
        }
        if ( !song[songN].isPlaying() ) {
          song[songN].rewind();
          songN = songN - 1;
        }
      } else {
        if ( song[songN].isPlaying() ) {
          song[songN].pause();
          song[songN].rewind();
          songN = totalSongs - 1;
          song[songN].play();
        }
        if ( !song[songN].isPlaying() ) {
          song[songN].rewind();
          songN = totalSongs - 1;
        }
      }
    }//end prev button code
  }
}
