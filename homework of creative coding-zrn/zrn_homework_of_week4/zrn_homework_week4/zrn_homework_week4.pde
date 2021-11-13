boolean withStroke;
boolean withFill;

void setup(){
  size(550,200,P3D);
  background(155);
  textSize(32);
  fill(100, 102, 200, 200);
  text("A good beginning is half down.", 60, 80, -60);  
  text("A good beginning is half down.", 70, 120);
}
  String text = "A good beginning is half down.";
  
void draw(){
 
  float alpha = random(255);
  float choice =random(1);
  if(choice <0.3){
    withStroke = true;
    noFill();
} else if(choice < 0.6);{
  withFill = true;
  noStroke();
}
  if(withStroke){
  stroke(random(255),random(255),random(255));
}else{
}
  if(withFill){
    fill(random(255),random(255),random(255),alpha);
}
  text("A good beginning is half down.", 60, 80, -60);
  text("A good beginning is half down.", 70, 120);
 }
