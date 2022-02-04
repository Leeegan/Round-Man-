/**
 * COMP570 Programming for Creativity 2019 S1
 * 
 * Final Project - Start Code
 * Demonstration of programming mastery often shows in programs.
 *
 * This program I created my own twist of PacMan instead of having any ghost I decided that I wasn't going to add any,
 * but I have walls which while playing we are not allowed to go throw. So basically its a pacman maze and 
 * the pacmac have to go to all the ellipses before finishing the game.
 * By clicking the arrow keys or asdw to move around.
 * 
 * @ author Leegan Te, Student ID# 16961403
 * @verion 1.0 - 31.05.2019: Created
 */

PImage img;
import processing.sound.*;
SoundFile file; // allows playback or manipulate sound.
int xPos = 20; //start position of pacman
int yPos = 20;
int i=1;
int direction, direction2;
int score=0;
float timer=0.0; //declares the timer
void setup() {
  fullScreen(); // Set Size if Canvas
  {
    file = new SoundFile(this, "Super Mario Bros Official Theme Song.wav");  // allows play back for the chosen song.
    file.play();
    file.amp(1); // changes the frequency of the sound
    ellipseMode(RADIUS); // uses the first two parameters of an ellipse as the shape center points.
  }
  smooth();
  img = loadImage("IMG_1564.jpg"); // presents the images
}
void draw() {
  stroke(128, 128, 255); // sets the stroke to cyan/blue
  for (int w=0; w<height/10; w++) { //sets the speed,
    for (int h=0; h<width/10; h++) { //and mouth during moving.
      fill(0, 0, 255); // makes the grid in the background blue.
      rect(20*h, 20*w, 20, 20); //makes the grid
    }
  }
  tint(100, 255, 255); // tints the image to somesort of baby blue
  image(img, 650, 0); // positioning of the image
  tint(#F2EDDF); //change half of the colour on the picture
  image(img, 0, 0); //Orignal picture on the left

  fill(#EDEDF0); // sets some words white
  textSize(52); //adjust the size of the words
  text("Welcome to RoundMan", 200, 80);
  textSize(20);
  text("Left click on the mouse to change to one photo", 400, 800);
  text("Use arrow keys or asdw to move", 500, 900);
  textSize(32);
  text("Score: "+score, 900, 80);
  text("seconds:"+timer, 1100, 80);
  text("TRY NOT TO TOUCH THE WALLS", 600, 850);
  timer=timer+0.1; //makes the timer count into seconds not minutes

  if (timer>=150)  //this if statement states a certain time point then something happens when it hits 150
  {
    textSize(200);
    text("GAMEOVER!", 400, 500); //when it hits a certain time the game will say "GAMEOVER!"
    stop(); //when it hits the 150 on the timer the program will stop.
    exit(); // then it will close out of it automatically.
  }


  fill(#34322B); //sets wall colour greyish brown colour
  rect(100, 50, 10, 500);  // the rect(); below are rectangle walls
  rect(120, 500, 150, 20); 
  rect(120, 650, 400, 20); 
  rect(120, 550, 409, 20); 
  rect(400, 190, 10, 200); 
  rect(622, 110, 750, 20);    
  rect(20, 60, 75, 20);
  rect(100, 20, 75, 20);
  rect(90, 800, 75, 20);

  fill(#000000); // sets the ellipse on the screen black.
  ellipse(800, 150, 10, 10);
  ellipse(550, 390, 10, 10);
  ellipse(500, 400, 10, 10);
  ellipse(220, 390, 10, 10);
  ellipse(300, 400, 10, 10);
  ellipse(300, 450, 10, 10);
  ellipse(300, 500, 10, 10);
  ellipse(250, 450, 10, 10);
  ellipse(900, 450, 10, 10);
  ellipse(500, 600, 10, 10);
  ellipse(1000, 400, 10, 10);
  ellipse(1500, 50, 10, 10);
  ellipse(999, 600, 10, 10);
  ellipse(750, 450, 10, 10);
  ellipse(10, 500, 10, 10);
  ellipse(350, 500, 10, 10);
  ellipse(60, 500, 10, 10);
  ellipse(28, 250, 10, 10);
  ellipse(800, 250, 10, 10);
  ellipse(700, 620, 10, 10);

  xPos=xPos+direction; 
  yPos=yPos+direction2;
  translate(xPos, yPos); // sets the keys to make the ellipse pacman move.
  fill(255, 0, 0); //sets the ellipse and pacman red.
  ellipse(xPos, yPos, 30, 30); // make an ellipse in front of pacman

  if (frameCount%1==0)
    i=-i;
  if (i==1) {
    arc(50, 50, 50, 50, .51, 5.9); // arc draws something like a pie chart but it takes a bit off the ellipse to form the pacman.
  } else {
    arc(50, 50, 50, 50, 0.2, 6.2);
  }

  fill(0, 50, 255);
    //whenever pressing any keys assoicated with xPos or yPos will equals the velocity of the movement.
  if (keyPressed == true) { // The xPos is the speed of the pacman when going left and right.
    if (keyCode == LEFT) {
      xPos += -20; //sets the velocity pressing left key
    }
  }
  if (keyPressed == true) {
    if (key == 'a') {
      xPos += -20;
    }
  }
  if (keyPressed == true) {
    if (keyCode == RIGHT) {
      xPos += 20;
    }
  }
  if (keyPressed == true) { 
    if (key == 'd') {
      xPos += 20;
    }
  }
  if (keyPressed == true) {  
    if (keyCode == UP) {  
      yPos += -20;
    }
  }
  if (keyPressed == true) {
    if (key == 'w') {
      yPos += -20;
    }
  }
  if (keyPressed == true) {
    if (keyCode == DOWN) {
      yPos += 20;
    }
  }
  if (keyPressed == true) {
    if (key == 's') {
      yPos += 20;
    }
    score = score +1; //counts the score/movement
  }
}
