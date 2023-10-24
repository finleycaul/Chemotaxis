 Bee [] colony;
Cloud [] sky;
 void setup()   
 {     
   //initialize bacteria variables here 
   size(600, 600);
   frameRate(6);
   background(225, 255, 255);
   sky = new Cloud[7];
   for (int z=0; z<sky.length; z++){
   sky [z] = new Cloud();
   }
   colony = new Bee[25];
   for (int i=0; i<colony.length; i++){
   colony [i] = new Bee();
   }
 }   
 void draw()   
 {    
   scale(0.5);
   scale(0.5);
    background(225, 255, 255);
   for(int z=0; z<sky.length; z++){
     sky[z].show();
   }
   for(int i=0; i<colony.length; i++){
     colony[i].move();
     colony[i].show();
   }
 }  
 
 class Cloud   
{     
   int clX, clY;
   Cloud()
   {
   clX = (int)(Math.random()*2000+40);
   clY = (int)(Math.random()*2000+40);
   }
   void show()
  {
     fill(255);
    noStroke();
    ellipse(clX,clY,150,130);
    ellipse(clX+90,clY+10,145,125);
    ellipse(clX+170,clY+30,140,90); 
    ellipse(clX-55,clY+35,110,90); 
    ellipse(clX+25,clY+50,140,100); 
    ellipse(clX+100,clY+50,120,120);
 } 
}

class Bee   
{     
   int myX, myY, blue, green, red;
   Bee()
   {
     
   myX = 100;
   myY = 100;
   green = (int)(Math.random()*56)+200;
   blue = (int)(Math.random()*150);  
   red = (int)(Math.random()*21)+235;
   }
   void move()
   {
    myX= myX + (int)(Math.random()*150);  
    myY = myY + (int)(Math.random()*150);
   }
   void show()
  {
    
   fill(179, 230, 255);
  beginShape(); //first wing
  curveVertex(myX-20, myY-20);
  curveVertex(myX-20, myY-20);
  curveVertex(myX-35, myY-25);
  curveVertex(myX-55, myY-35);
  curveVertex(myX-60, myY-55);
  curveVertex(myX-45, myY-70);
  curveVertex(myX-25, myY-65);
  curveVertex(myX-15, myY-50);
  curveVertex(myX-20, myY-20);
  curveVertex(myX-20, myY-20);
  endShape();
  
  beginShape();//ontop wing
  curveVertex(myX-5, myY-25);
  curveVertex(myX-5, myY-25);
  curveVertex(myX-25, myY-40);
  curveVertex(myX-35, myY-55);
  curveVertex(myX-35, myY-70);
  curveVertex(myX-20, myY-80);
  curveVertex(myX-8, myY-77); 
  curveVertex(myX-5, myY-75);
  curveVertex(myX+2, myY-65);
  curveVertex(myX+2, myY-55);
  curveVertex(myX-5, myY-25);
  curveVertex(myX-5, myY-25);
  endShape();
 
 fill(26, 13, 0);
 triangle(myX-65, myY, myX-40, myY-10, myX-40, myY+10);// stinger
  
 fill(red, green, blue);
 ellipse(myX, myY, 100, 75); //body

fill(26, 13, 0);
beginShape();//first strip
  curveVertex(myX+15,myY-36);
  curveVertex(myX+15,myY-36);
  curveVertex(myX+8,myY);
  curveVertex(myX+15,myY+34); 
  curveVertex(myX+5,myY+34);
  curveVertex(myX-2, myY);
  curveVertex(myX+5,myY-36);
  curveVertex(myX+15,myY-36);
  curveVertex(myX+15,myY-36);
  endShape();
  beginShape(); // second strip
  curveVertex(myX-10,myY-35);
  curveVertex(myX-10,myY-35);
  curveVertex(myX-17,myY+2);
  curveVertex(myX-10,myY+35);
  curveVertex(myX-20,myY+35);
  curveVertex(myX-27,myY+2);
  curveVertex(myX-20,myY-35);
  curveVertex(myX-10,myY-35);
  curveVertex(myX-10,myY-35);
  endShape();
  beginShape(); // third strip
  curveVertex(myX-35,myY-27);
  curveVertex(myX-35,myY-27);
  curveVertex(myX-40,myY+2);
  curveVertex(myX-35,myY+25);
  curveVertex(myX-50,myY+10);
  curveVertex(myX-50,myY-11);
  curveVertex(myX-35,myY-27);
  curveVertex(myX-35,myY-27);
  endShape();
  ellipse(myX+25, myY-5,5,10);
  ellipse(myX+35, myY-5,5,10); 
 } 
}

