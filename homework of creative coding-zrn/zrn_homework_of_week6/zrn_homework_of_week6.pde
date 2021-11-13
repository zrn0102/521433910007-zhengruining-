PVector location;
PVector velocity;
 
void setup() {
  size(640,550);
  location = new PVector(100,100);
  velocity = new PVector(3,8);

}
 
void draw() {
  background(193, 205, 193);
  rect(300,300,100,100);
  location.add(velocity);
  if ((location.x > width) || (location.x < 0)) {
    velocity.x = velocity.x * -1;
  }
  if ((location.y > height) || (location.y < 0)) {
    velocity.y = velocity.y * -1;
  }
  if ((location.x > 278) && (location.x < 422) && (location.y > 278) && (location.y < 422))  {
    velocity.x = velocity.x * -1;
    velocity.y = velocity.y * -1;
  }
 
  stroke(50,150,43);
  strokeWeight(3);
  fill(50,100,45);
  ellipse(location.x,location.y,40,40);
  ellipse(location.x,location.y,15,15);
}
