Bacteria [] snake;
 void setup()   
 {     
   size(700,700);  
  background(0);
  snake = new Bacteria [10];
  for(int i = 0; i< snake.length; i++)
  snake[i] = new Bacteria(350,350, (int)(Math.random() * 255));
 }   
 void draw()   
 {    
  for(int i = 0; i < snake.length; i++){
   snake[i].move();
     snake[i].show();
  }
  
 }  
 class Bacteria    
 {     
   int myX, myY, col,r,g,b;
   
    Bacteria(int x, int y, int colour)
 {
   myX = x;
   myY = y;
   col = colour;
   r = (int)(Math.random() * 255);
   g = (int)(Math.random() * 255);
   b = (int)(Math.random() * 255);
   
 }
  void move()
  {
    myX += (int)(Math.random() *7) -3;
     myY += (int)(Math.random() *7) - 3; 
  }
  void show()
  {
    if(mousePressed){
      r = (int)(Math.random() * 255);
   g = (int)(Math.random() * 255);
   b = (int)(Math.random() * 255);
    }     
    fill(r,g,b);
    stroke(r,g,b);
    if(mouseX > myX){
      myX += (int)(Math.random() *7) -2; 
    }
    if(mouseX < myX){
      myX += (int)(Math.random() *7) -4; 
    }
    if(mouseY > myY){
      myY += (int)(Math.random() *7) -2; 
    }
    if(mouseY < myY){
      myY += (int)(Math.random() *7) -4; 
    }
    ellipse(myX,myY, 10,10);

  }
 }
