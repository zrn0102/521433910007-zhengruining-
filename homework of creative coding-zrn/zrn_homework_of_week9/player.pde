class Player{
  float xPos;
  float yPos;
  
  float pSize;
  
  Player(){
    xPos = random(55,width-55);
    yPos = random(25,height-120);
    
    pSize = 50.0;    
  }
  
  void drawPlayer(){
    fill(random(255),random(255),random(255),random(50,225));
    strokeWeight(4);
    ellipse(xPos, yPos, pSize, pSize);
    fill(0);
    line(xPos, yPos+pSize/2, xPos, yPos+pSize+25);
    fill(0);
    line(xPos, yPos+pSize/2+random(10,25), xPos-random(15,25), yPos+pSize/2+random(1,25));
    fill(0);
    line(xPos, yPos+pSize/2+random(10,25), xPos+random(15,25), yPos+pSize/2+random(1,25));
    fill(0);
    line(xPos, yPos+pSize+25, xPos-random(25,55), yPos+pSize+random(5,70));
    fill(0);
    line(xPos, yPos+pSize+25, xPos+random(25,55), yPos+pSize+random(5,70));
    noLoop();
    
    
  }
}
