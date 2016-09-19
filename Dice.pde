Dice bigSean;
void setup()
{
	size(580,650);
	noLoop();
}
float valueAverage;
void draw()
{
	valueAverage = 0;
	background (0);
	for(int y = 0; y <= 550; y += 45 )
	{
		for(int x=0; x<=550; x += 45)
	
	{
		
		Die bigSean = new Die(x,y);
		bigSean.show();
		fill(255);
		textAlign (CENTER);
		valueAverage = (valueAverage + bigSean.value);
		text ("Average value on this roll:",valueAverage,290,625);
		System.out.println("valueAverage: "+valueAverage);

	}
}

}
void mousePressed()
{
	redraw();
}
class Die
{
	int value, myX, myY;
	int valueAverage;
	Die(int x, int y) //constructor
	{
		value = (int)(Math.random()*6+1);
		myX = x;
		myY = y;
	}
	void show()
	{
 		noStroke();
		fill(255,255,240);
		rect(myX,myY,40,40,18);
		if (value == 1)
		{
			fill(0);
			ellipse(myX+20,myY+20,5,5);
		}
		if (value == 2)
		{
			fill(0);
			ellipse(myX+10,myY+10,5,5);
			ellipse(myX+30,myY+30,5,5);
		}
		if (value == 3)
		{
			fill(0);
			ellipse(myX+10,myY+10,5,5);
			ellipse(myX+20,myY+20,5,5);
			ellipse(myX+30,myY+30,5,5);
		}
		if (value == 4)
		{
			fill(0);
			ellipse(myX+10,myY+10,5,5);
			ellipse(myX+10,myY+30,5,5);
			ellipse(myX+30,myY+10,5,5);
			ellipse(myX+30,myY+30,5,5);

		}
		if (value == 5)
		{
			fill(0);
			ellipse(myX+10,myY+10,5,5);
			ellipse(myX+10,myY+30,5,5);
			ellipse(myX+20,myY+20,5,5);
			ellipse(myX+30,myY+10,5,5);
			ellipse(myX+30,myY+30,5,5);
		}
		if (value == 6)
		{
			fill(0);
			ellipse(myX+10,myY+10,5,5);
			ellipse(myX+10,myY+20,5,5);
			ellipse(myX+10,myY+30,5,5);
			ellipse(myX+30,myY+10,5,5);
			ellipse(myX+30,myY+20,5,5);
			ellipse(myX+30,myY+30,5,5);
		}
	}
}
