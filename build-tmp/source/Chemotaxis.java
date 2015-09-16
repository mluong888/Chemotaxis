import processing.core.*; 
import processing.data.*; 
import processing.event.*; 
import processing.opengl.*; 

import java.util.HashMap; 
import java.util.ArrayList; 
import java.io.File; 
import java.io.BufferedReader; 
import java.io.PrintWriter; 
import java.io.InputStream; 
import java.io.OutputStream; 
import java.io.IOException; 

public class Chemotaxis extends PApplet {

 Bacteria germ;
 //declare bacteria variables here   
 public void setup()   
 {     
 	size (500,500);
 	germ = new Bacteria (250,250,255);
 	//initialize bacteria variables here   
 }   
 public void draw()   
 {    
 	background(0);
 	fill(255,0,0);
 	rect(0,0,250,500);
 	fill(255);
 	textSize(40);
 	text("VS.",225,250);
 	germ.move();
 	germ.show();
 	//move and show the bacteria   
 }  
 class Bacteria    
 {     
 	int myX, myY, col;
 	Bacteria (int x, int y, int shade)
 	{
	 	myX = x;
	 	myY = y;
	 	col = shade;
	}
 	public void show()
	 {
	 	fill(255);
	 	ellipse(myX,myY,20,20);
	 	col = (int)(Math.random()*256);
	 }
 	public void move()
	 {
		myX = myX + (int)(Math.random()*5-2.5f);
		myY = myY + (int)(Math.random()*5-2.5f);

	 }
 	

 	//lots of java!   
 }    
  static public void main(String[] passedArgs) {
    String[] appletArgs = new String[] { "Chemotaxis" };
    if (passedArgs != null) {
      PApplet.main(concat(appletArgs, passedArgs));
    } else {
      PApplet.main(appletArgs);
    }
  }
}
