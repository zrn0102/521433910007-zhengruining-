class Spin {
  float x, y, speed;
  float angle = 0.0;
  
  Spin(float xpos, float ypos, float s) {
    x = xpos;
    y = ypos;
    speed = s;
  }
  
  void update(){
    angle += speed;
  }
}

class spinArm extends Spin {
  SpinArm (float x, float y, float s){
   super(x, y, s);
 }

void display(){
  strokeWeight(1);
  stroke(0);
  pushMatrix();
  translate(x, y);
  angle += speed;
  rotate(angle);
  line(0, 0, 100, 0);
  popMatrix();
  }
} 
 class SpinSpots extends Spin{
   float dim;
   
   SpinSpots(float x, float y, float s, float d) {
     super(x, y, s);
     dim = d;
   }
   
   void display() {
      noStroke();
      pushMatrix();
      translate(x, y);
      angle += speed;
      rotate(angle);
      ellipse(-dim/2, 0, dim, dim);
      ellipse(dim/2, 0, dim, dim);
      popMatrix();
  }
} 

spinArm arm;
SpinSports spots();

void setup() {
  size(100,100);
  arm = new SpinArm(width/2, height/2, 0.01);
  spots = new SpinArm(width/2, height/2, -0.02, 33.0);
}
 void draw(){
   background(204);
   arm.update();
   arm.display();
   spots.update();
   spots.display();
 }
