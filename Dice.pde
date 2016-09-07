Dice bigSean;
void setup()
{
	noLoop();
}
void draw()
{
	for(int i=0; i<50; i=i+15)
	{
		Dice bigSean = new Dice();
		bigSean.roll();
		bigSean.portray();
	}

}
void mousePressed()
{
	redraw();
}
class Die //models one single dice cube
{
	//variable declarations here
	Die(int x, int y) //constructor
	{
		//variable initializations here
	}
	void roll()
	{
		//your code here
	}
	void portray()
	{
		//your code here
	}
}
