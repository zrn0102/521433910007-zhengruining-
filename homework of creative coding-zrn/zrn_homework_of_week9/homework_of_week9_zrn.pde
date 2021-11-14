Player [] p;

void setup(){
  size(800, 800);
  p = new Player[20];
  for(int i = 0; i < p.length; i++){
    p[i] = new Player();
  }
}

void draw(){
  background(125);
  for(int i = 0; i < p.length; i++){
  p[i].drawPlayer();
  }
}
