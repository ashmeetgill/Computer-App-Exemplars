import ddf.minim.*;
import ddf.minim.analysis.*;
import ddf.minim.effects.*;
import ddf.minim.signals.*;
import ddf.minim.spi.*;
import ddf.minim.ugens.*;

//Global Variables
Minim minim;
int numberOfSongs = 5;
AudioPlayer[] song = new AudioPlayer[numberOfSongs];
AudioPlayer sound1;
AudioPlayer sound2;
AudioPlayer sound3;
AudioPlayer sound4;
AudioPlayer sound5;
AudioPlayer soundClose;
int currentSong = numberOfSongs - numberOfSongs; //Uses formula or FileIO Memory

void setup () {
  size (900, 700);
  //Using Width and Height Key Varaibles, communciaiton to the display Geometry
  //println("Start of Console");
  //printArray(fontList); //For listing all possible fonts to choose, then createFont
  titleFont = createFont ("Javanese Text", 48);//Must also tools/ Create Font/ Find Font

  //Songs
  minim = new Minim(this); //load from data directory, loadFile should also load from libray
  song[0] = minim.loadFile("5PM - Animal Crossing New Leaf Music.mp3");
  song[1] = minim.loadFile("mr. hong  bittersweet chocolate.mp3");
  song[2] = minim.loadFile("stream_error - sometimes.mp3");
  song[3] = minim.loadFile("Kenai – I like, like you chill out music beats to studyrelax.mp3");
  song[4] = minim.loadFile("Bryce Fox - SAD! (XXXTentacion Cover).mp3");

  //Sounds
  sound1 = minim.loadFile("Beep_Short.mp3");
  sound2 = minim.loadFile("Pen_Clicking.mp3");
  sound3 = minim.loadFile("Winding_Alarm_Clock.mp3");
  sound4 = minim.loadFile("Cartoon_Boing.mp3");
  sound5 = minim.loadFile("Instrument_Strum.mp3");
  soundClose = minim.loadFile("Screen_Door_Close.mp3");

  musicPlayerGUI_Setup();
}

void draw() {

  MusicPlayerGUIDraw ();
  quitButtonDraw ();
  Music_Visualzer();
}

void mouseClicked() {
  quitButtonMouseClicked();
  musicPlayerButton();
}
