int num = 30;
float mx[] = new float[num];
float my[] = new float[num];

void setup() {
  size(640, 480);
  noStroke();
  fill(255, 123); 
}
  
void draw(){
   background(96,118,142);
 if ((keyPressed == true) && ((key == 'a') || (key == 'A'))) {
  int which = frameCount % num;
  mx[which] = mouseX;
  my[which] = mouseY;
  
  for (int i = 0; i < num; i++) {
    int index = (which+1 + i) % num;
    fill(255);
    ellipse(mx[index], my[index], i, i);
  } 
} else  {
   if (mousePressed == true) {
  fill(0);
  triangle(mouseX, mouseY, mouseX+50, mouseY, mouseX+25, mouseY+25);
  }
 }
}
