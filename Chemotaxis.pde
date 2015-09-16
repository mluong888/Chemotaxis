 Bacteria germ;
 //declare bacteria variables here   
 void setup()   
 {     
 	size (500,500);
 	germ = new Bacteria (250,250,255);
 	//initialize bacteria variables here   
 }   
 void draw()   
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
 	void show()
	 {
	 	fill(255);
	 	ellipse(myX,myY,20,20);
	 	col = (int)(Math.random()*256);
	 }
 	void move()
	 {
		myX = myX + (int)(Math.random()*5-2.5);
		myY = myY + (int)(Math.random()*5-2.5);

	 }
 	

 	//lots of java!   
 }    
