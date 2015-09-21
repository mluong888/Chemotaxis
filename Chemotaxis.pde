 Bacteria germ;
 Bacteria bac;
 Bacteria ew;
 int count = 0;
 int count1 = 0;
 //declare bacteria variables here   
 
 void setup()   
 {     
 	size (500,500);
 	germ = new Bacteria (250,250);
 	bac = new Bacteria (250,300);
 	ew = new Bacteria (250,200);
 	//initialize bacteria variables here   
 }   
 void draw()   
 {    
 	background(30,250,30);
 	fill(255,0,0);
 	rect(0,0,250,500);
 	fill(0);
 	ellipse(100,100,35,35);
 	
 	fill(255,0,0);
 	noStroke();
 	ellipse(115,98,15,16);
 	ellipse(100,119,18,10);
 	triangle(85,80,97,90,110,80);
 	fill(0);
 	arc(98,77,12,13,-.8,2);
 	arc(102,79,12,13,2,5);
 	stroke(0);
 	
 	germ.move();
 	germ.show();
 	bac.move();
 	bac.show();
 	ew.move();
 	ew.show();
 	fill(255);
 	textSize(40);
 	text("VS.",225,250);
 	textSize(20);
 	text("Score: " + count,70,30);
 	text("Score: " + count1,330,30);

 	 if (count >5000)
	 {
	 	text("Mac Wins!", 200,300);
	 }
	 if (count1 > 5000)
	 {
	 	text("Windows Wins!", 200,300);
	 }
 	//move and show the bacteria   
 }  
 class Bacteria    
 {     
 	int myX, myY, col;
 	Bacteria (int x, int y)
 	{
	 	myX = x;
	 	myY = y;
	 	col = color((int)(Math.random()*256),(int)(Math.random()*256),(int)(Math.random()*256));
	}
 	void show()
	 {
	 	fill(col);
	 	ellipse(myX,myY,20,20);
	 	if (myX<250)
 	{
 		count ++;
 	}
 	else 
 	{
 		count1 ++;
	 }

 	}
 	void move()
	 {
		myX = myX + (int)(Math.random()*5-2.5);
		myY = myY + (int)(Math.random()*5-2.5);

	 }   
 }    
 
