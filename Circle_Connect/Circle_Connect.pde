ArrayList<Circle> circles;  //Array list of the circles

void setup() {
  //fullScreen();
  size(1280, 720);  //Set the size of the canvas
  circles = new ArrayList();  //Initialise the array list of circles and create 200 of them
  for (int i = 0; i < 200; i++) {
    circles.add(new Circle());
  }
}

void draw() {
  background (20);    //draw the background each frame

  //Call the draw function for each circle each frame
  for (Circle circle : circles) {
    noStroke();
    circle.draw();
  }

  //Check the distance between each circle on the screen, and if the distance is below 50 draw a line between the two circles
  for (int i = 0; i < circles.size(); i++) {
    for (int j = 0; j < i; j++) {
      float dist = dist(circles.get(i).pos.x, circles.get(i).pos.y, circles.get(j).pos.x, circles.get(j).pos.y);  //Distance
      if (dist <= 100) {
        fill(255);          //Set the colour of the line
        stroke(255);
        strokeWeight(2);    //Set the stroke weight of the line
        line(circles.get(i).pos.x, circles.get(i).pos.y, circles.get(j).pos.x, circles.get(j).pos.y);  //Draw the line
      }
    }
  }
}
