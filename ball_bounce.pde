
ArrayList myBall;

void setup() {
  size(500, 500);
  smooth();
  myBall = new ArrayList();
}

float x = 0;
  int i =0;

void draw() {
  background(204);
    
  for(int j=0;j<myBall.size();j++)
  {
    Ball tmpBall = (Ball) myBall.get(j);
    if(tmpBall != null)  tmpBall.run();
  }
}

void mouseClicked()  { 
  
    Ball tmpBall = new Ball(mouseX,mouseY);
    myBall.add(tmpBall);
}
