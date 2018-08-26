class Ball{
  
 float x = 0;
 float y = 0;
 float speedX = random(-4,4);
 float speedY = random(-2,-2);
 float colorx = 0;
 float colory = 0;
 float colorz = random(0,255);
 Ball(float x1,float y1)
 {
   x = x1;
   colorx = x1;
   colory = y1;
   y = y1;
 }
 
 void run()
 {
   display();
   move();
   bounce();
   gravity();
   // collision
 }
 
 void gravity()
 {
   speedY += 0.1;
 }
 
 void move()
 {
   x += speedX;
   y += speedY;
 }
 
 void bounce()
 {
   if((x>width) | (x<0)) speedX *= -1;
   if( y>height) speedY *= -1;
   if( y< 0) speedY *= -1;   
 }
   
 void display(){
   //if(y>501) {y = colory; x=colorx;}
   fill(colorx,colory,colorz);
   ellipse(x,y,25,25);
   //println(x," ",y);
 }
  
}
