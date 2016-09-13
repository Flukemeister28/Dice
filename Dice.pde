Dice bigSean;
void setup()
{
	size(265,265);
	noLoop();
}
void draw()
{
	background (0);
	for(int y = 0; y <= 255; y += 45 )
	{
		for(int x=0; x<=255; x += 45)
	
	{
		
		Die bigSean = new Die(x,y);
		bigSean.show();
	}

	}

}
void mousePressed()
{
	redraw();
}
class Die //models one single dice cube
{
	int value, myX, myY;
	Die(int x, int y) //constructor
	{
		value = 1;
		myX = x;
		myY = y;

	}
	void roll()
	{
		
	}
	void show()
	{
 		noStroke();
		fill((int)(Math.random()*255),(int)(Math.random()*255),(int)(Math.random()*255));
		rect(myX,myY,40,40,18);
		if (value == 1)
		{
			fill(255);
			textAlign (CENTER);
			text ("One",myX+20,myY+20);
		}

	}
}
