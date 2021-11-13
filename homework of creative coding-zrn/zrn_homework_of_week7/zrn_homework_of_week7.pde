int x = 300;
int y = 300;
int m = 60;
int n = 10;
int dd = 0;

void setup(){
  size(600,600);
  noStroke();
  frameRate(10);
}

void draw(){
  background(0);
  randomSeed(dd);
  drawCircle(x, y, m, n);
  dd++;
}

void drawCircle(float x, float y, int radius, int num) {
  float value = 255 * num /8.0;
  fill(value, 155);
  ellipse(x, y, radius*2, radius*2);
  if (num > 1) {
    num = num - 1;
    int branches = int (random(2,10));
    for (int i = 0; i < branches; i++) {
      float u = random(0, TWO_PI);
      float newx = x + cos(u) * 15.0* num;
      float newy = y + sin(u) * 8.0* num;
      drawCircle(newx, newy, radius/2, num);
      stroke(random(255));
    }
  }
} 
