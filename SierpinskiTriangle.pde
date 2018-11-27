
void setup()
{
	size(500,500);
	background(0,0,0);
}
void draw()
{
	fill(0,0,0);
	noStroke();
	rect(0,0,500,500);
	stroke(255,255,255);

}
public class equitri
{
	int cornX, cornY, size;
	public void trishape(int corn1X, int corn1Y, int length)
	{
		//params are bottom left corner and side length
		cornX=corn1X;
		cornY=corn1Y;
		size=length;
	}
	public void show()
	{
		//triangle(cornX,cornY,cornX+size,cornY+size,,);
	}
}