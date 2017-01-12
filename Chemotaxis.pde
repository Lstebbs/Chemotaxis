Bacteria [] colony;
//declare bacteria variables here   
 void setup()   
 {     
   size(600,600);
   background(240);
   colony = new Bacteria[600];
   for(int i = 0; i < colony.length; i++)
   {
     colony[i] = new Bacteria();
   
   //initialize bacteria variables here   
   }
 }   
 void draw()   
 {    
   background(230);
   for(int i = 0; i < colony.length; i++)
   {
     colony[i].move();
     colony[i].show();
   //move and show the bacteria   
 }  
 }
 class Bacteria
 {     
   int myX, myY;
   Bacteria(){
     myX = 0;
     myY = ((int)(Math.random()*15)-8);
    
   //lots of java!   
   }
 
void show()
{
  fill(100,100,100);
  stroke(2);
  fill(250,230,0);
  ellipse(myX,myY,8,8);
}
void move()
{
  if(mouseX> myX && mouseY> myY){
     myX+= (int)(Math.random()*5);
     myY+= (int)(Math.random()*5);
  }
  else if(mouseX< myX && mouseY < myY)
  {
     myX-= (int)(Math.random()*5);
     myY-= (int)(Math.random()*5);
  }
  else if(mouseX < myX && mouseY > myY)
  {
     myX-= (int)(Math.random()*5);
     myY+= (int)(Math.random()*5);
  }
  else if(mouseX>myX && mouseY<myY){
    myX+= (int)(Math.random()*5);
    myY-= (int)(Math.random()*5);
  }
  else
  {
     myX+= (int)(Math.random()*5);
     myY+= (int)(Math.random()*5);
     myX-= (int)(Math.random()*5);
     myY-= (int)(Math.random()*5);
   }
  }
 }
