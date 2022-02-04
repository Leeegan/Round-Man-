void mousePressed() { //while left clicking the screen the pictures will change.
  if (mouseX>300&& mouseX <=300 +width&& mouseY <=100 + height)
  {
    img = loadImage("IMG_1457.jpg");
  } else {
    img = loadImage("IMG_1564.jpg");
  }
}
