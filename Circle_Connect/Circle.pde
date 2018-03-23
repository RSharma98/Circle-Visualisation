class Circle {

  PVector pos;  //Position
  PVector vel;  //Velocity
  float size;   //Size of the circle

  Circle() {
    pos = new PVector(random(size, width - size), random (size, height - size));  //Set the position to a random position
    vel = new PVector (random(-2, 2), random (-2, 2));                            //Set the starting velocity to a random vector
    size = random(5, 10);    //Set the size of the circle
  }

  void draw() {
    pos.add(vel);  //Add velocity to the position
    fill(255);  //Set the colour of the circle to white
    ellipse(pos.x, pos.y, size, size);    //Draw the circle
    
    //If the circle goes to the edge of the screen, flip the x velocity
    if(pos.x >= width - size/2 || pos.x <= size/2){
      vel.x *= -1f;
    }
    
    //If the circle goes to the edge of the screen, flip the y velocity
    if(pos.y >= height - size/2 || pos.y <= size/2){
      vel.y *= -1f ;
    }
  }
}