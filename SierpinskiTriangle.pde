boolean i = false;
public void setup()
{
background(123,239,173);
size(500,500);
noLoop();
 
}
public void draw()
{
background(123,239,173);
sierpinski(110,450,300);
}
public void mousePressed()//optional
{
// fill(0);
// sierpinski(50,450,400);
redraw();
}	

public void sierpinski(int x, int y, int len) 
{
	if (len < 20)
	{
		if(x<250)
		fill((int)(Math.random()*100),(int)(Math.random()*250),(int)(Math.random()*190));
	if(x>250)
		fill(0);
		triangle(x, y, x + len , y, x + len/2, y - len);
	}
	else
	{
		sierpinski(x,y, len/2);
		sierpinski(x + len/2,y,len/2);
		sierpinski(x + len/4,y - len/2, len/2);
	}
	
}