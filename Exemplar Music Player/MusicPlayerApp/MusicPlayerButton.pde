Boolean playButton = false;

void musicPlayerButton() {
  //Power Button, See Tab QuitButton

  //Play-Pause
  if (mouseX>width*3/15 && mouseX<width*3.7/15 && mouseY>height*23.1/25 && mouseY<height*20.6/21)
    if (playButton == true) {
      playButton = false;
    } else {
      playButton = true;
    }
  //println(playButton); if play button does not work

  //Play-Pause Song
  if (mouseX>width*3/15 && mouseX<width*3.7/15 && mouseY>height*23.1/25 && mouseY<height*20.6/21)
    if ( song[currentSong].isPlaying() ) {
      sound2.play();
      sound2.rewind();
      song[currentSong].pause();
    } else if ( song[currentSong].position() == song[currentSong].length() ) {
      sound2.play();
      sound2.rewind();
      song[currentSong].rewind();
      song[currentSong].play();
    } else {
      sound2.play();
      sound2.rewind();
      song[currentSong].play();
    }

  //Next
  if (mouseX>width*4/15 && mouseX<width*4.6/15 && mouseY>height*23.1/25 && mouseY<height*20.6/21) {
    if (song[currentSong].isPlaying()) {
      sound1.play();
      sound1.rewind();
      song[currentSong].pause();
      song[currentSong].rewind();
      if ( currentSong == numberOfSongs - 1 ) {
        sound1.play();
        sound1.rewind();
        //println ("Current Song is the last song, ", "Number: "+currentSong); //For Debugging
        currentSong = numberOfSongs - numberOfSongs;
        //println ("Current Song is now the first song or song, ", "Number: "+currentSong); //For Debugging
      } else {
        sound1.play();
        sound1.rewind();
        currentSong += 1; // Equivalent code: currentSong = currentSong + 1
        //println ("Current Song after the next or back button, but not the last song", "\tNumber: "+currentSong); //For Debugging
      }
      song[currentSong].play();
    } else {
      sound1.play();
      sound1.rewind();
      song[currentSong].rewind();
      if ( currentSong == numberOfSongs - 1 ) {
        //println ("Current Song is the last song, ", "Number: "+currentSong); //For Debugging
        currentSong = numberOfSongs - numberOfSongs;
        //println ("Current Song is now the first song or song, ", "Number: "+currentSong); //For DebuggingcurrentSong = numberOfSongs - numberOfSongs;
      } else {
        currentSong += 1; // Equivalent code: currentSong = currentSong + 1
        //println ("Current Song after the next or back button, but not the last song, ", "Number: "+currentSong); //For Debugging
      }
    }
  }


  //Previous
  if (mouseX>width*2/15 && mouseX<width*2.8/15 && mouseY>height*23.1/25 && mouseY<height*20.6/21) { //Next Button to Console
    if (song[currentSong].isPlaying()) {
      sound3.play();
      sound3.rewind();
      song[currentSong].pause();
      song[currentSong].rewind();
      if ( currentSong == numberOfSongs - numberOfSongs ) {
        //println ("Current Song is the first song, ", "Number: " + currentSong); //For Debugging
        currentSong = numberOfSongs - 1;
        //println ("Current Song is now the last song, ", "Number: " + currentSong); //For Debugging
      } else {
        currentSong -= 1; // Equivalent code: currentSong = currentSong + 1
        //println ("Current Song after the next or back button, but not the first song", "\tNumber: " + currentSong); //For Debugging
      }
      song[currentSong].play();
    } else {
      sound3.play();
      sound3.rewind();
      song[currentSong].rewind();
      if ( currentSong == numberOfSongs - numberOfSongs ) {
        //println ("Current Song is the first song, ", "Number: " + currentSong); //For Debugging
        currentSong = numberOfSongs - 1;
        //println ("Current Song is now the last song, ", "Number: " + currentSong); //For DebuggingcurrentSong = numberOfSongs - numberOfSongs;
      } else {
        currentSong -= 1; // Equivalent code: currentSong = currentSong + 1
        //println ("Current Song after the next or back button, but not the first song, ", "Number: "+currentSong); //For Debugging
      }
    }
  }

  //Loop
  if ( mouseX>width*14/15 && mouseX<width*14.6/15 && mouseY>height*23.1/25 && mouseY<height*20.6/21) {
    println ("Pressed Loop button");
    if ( song[currentSong].isPlaying() ) {
      sound4.play();
      sound4.rewind();
      println ("isPlaying", song[currentSong].isPlaying());
      if (song[currentSong].isLooping()) {
        sound4.play();
        sound4.rewind();
        println ("isLooping()", song[currentSong].isLooping());
        sound4.play();
        sound4.rewind();
        song[currentSong].play();
      }
    } else {
      println ("isPlaying", song[currentSong].isPlaying());
      song[currentSong].loop();
    }
  }
  //Stop
  if ( mouseX>width*8.2/15 && mouseX<width*8.9/15 && mouseY>height*23.1/25 && mouseY<height*20.6/21) {
    sound5.play();
    sound5.rewind();
    song[currentSong].pause();
    song[currentSong].rewind();
    if (song[currentSong].isPlaying() ) {
    } else { //song not playing
      sound5.play();
      sound5.rewind();
      song[currentSong].rewind();
    }
  }

  //forward
  if ( mouseX>width*0.1/15 && mouseX<width*0.8/15 && mouseY>height*2.1/25 && mouseY<height*3.1/21) song[currentSong].skip(1000);
  //back
  if ( mouseX>width*0.1/15 && mouseX<width*0.8/15 && mouseY>height*4.3/25 && mouseY<height*5/21) song[currentSong].skip(-1000);
}
