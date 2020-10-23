Bacteria[] one;  
 void setup()   
 {     
   background(197);
   size(700, 700);
   one = new Bacteria[1000];
   for(int i = 0; i<one.length; i++){
    one [i] = new Bacteria(); 
   }
 }   
 void draw()   
 {    
   
   for(int i = 0; i<one.length; i++) {
   one[i].show();
   one[i].move();
  
   }
 }  
 class Bacteria    
 {     
   int myX;
   int myY;
   int r, g ,b; 
   Bacteria() 
   {
     myX = (int)(Math.random()*700);
     myY = (int)(Math.random()*700);
     r = (int)(Math.random()*255)+1;
     g = (int)(Math.random()*255)+1;
     b = (int)(Math.random()*255)+1;
   }
   void move() 
   {
     myX = myX + ((int)(Math.random()*10)-5);
     myY = myY + ((int)(Math.random()*10)-5);
   }
   void show() 
   {
     fill(r, g, b);
     ellipse(myX, myY, 10, 10);
   }   
 }    
