String title = "Zilki's music player";
PFont titleFont;
void setup () {
  size(500, 600);
  background (#8B6F6F);
  println("Start of Console");
  titleFont = createFont ("GothicG-14",25);
  MusicPlayerButtons();
  MusicPlayerSetup();
  loadImage("download.jfif");
}

void draw() {

  MusicDraw();
}

void mouseClicked() { 

  //MusicPlayerButtons();
  MusicMousePressed();
}
