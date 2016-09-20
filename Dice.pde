Dice bigSean;
void setup()
{
	size(580,650);
	noLoop();
}
int totalValue = 0;
float valueAverage;
void draw()
{
	background (0);
	for(int y = 0; y <= 550; y += 45 )
	{
		for(int x=0; x<=550; x += 45)
	
	{
		Die bigSean = new Die(x,y);
		bigSean.show();
		totalValue = totalValue + bigSean.value;
	}

}
valueAverage = totalValue/169.0; 
fill(255);
			textAlign (CENTER);
			textSize (20);
			text ("Average roll on this turn:"+valueAverage,290,625);
			text ("Total sum on this turn:"+totalValue,290,645);

}
void mousePressed()
{
	redraw();
	totalValue = 0;
	valueAverage = 0;
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
