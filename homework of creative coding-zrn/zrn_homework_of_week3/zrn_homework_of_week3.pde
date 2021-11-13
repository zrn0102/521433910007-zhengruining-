float line1Size = 0;
float line2Size = 0;
int Width = 800;
int Height = 600;

void setup (){
  size (800,600);
  background(255);
}

void monDrian(){
   for(int line1 = 0; line1 < Height ; line1 += line1Size + 3) {
    line1Size = random(4, Width/3);
    for(int line2 = 0; line2 <Width; line2 += line2Size + 3) {
      line2Size = random(4, Height/3);
     
      rect(line2, line1, line2Size, line1Size);
      stroke(0);
      int a = int (random(3,12));
      strokeWeight(a);
      int c = int (random(50,175));
      fill(c);
      stroke(0);
    
    }
  }
}

void draw(){
  if (mousePressed){
    monDrian();
 }
}
