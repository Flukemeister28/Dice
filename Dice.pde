Dice bigSean;
void setup()
{
	size(300,300);
	noLoop();
}
void draw()
{
	for(int x=0; x<=45; x += 15)
	{
		background(0);
		Die bigSean = new Die(x,150);
		bigSean.show();

	}

}
void mousePressed()
{
	redraw();
}
class Die //models one single dice cube
{
	int value, myX1, myY1;
	Die(int x, int y) //constructor
	{
		value = (int)(Math.random()*6+1);
		myX1 = x;
		myY1 = y;

	}
	void roll()
	{
		//your code here
	}
	void show()
	{
		noStroke();
		fill(127);
		rect(myX1,myY1,40,40,18);
	}
}
