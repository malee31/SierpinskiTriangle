ArrayList<Equitri> triangles=new ArrayList<Equitri>();
void setup()
{
	size(500,500);
	background(0,0,0);
	triangles.add(new Equitri(50,450,400));
}
void draw()
{
	fill(0,0,0);
	noStroke();
	rect(0,0,500,500);
	stroke(255,255,255);
	for(int i=0; i<triangles.size(); i++)
	{
		triangles.get(i).show();
	}
}
public class Equitri
{
	int cornX, cornY, size;
	public Equitri(int corn1X, int corn1Y, int length)
	{
		trishape(corn1X, corn1Y, length);
	}
	public void trishape(int corn1X, int corn1Y, int length)
	{
		//params are bottom left corner and side length
		cornX=corn1X;
		cornY=corn1Y;
		size=length;
	}
	public void show()
	{
		stroke(0,0,0);
		fill(255,255,255);
		triangle(cornX,cornY,cornX+size,cornY,cornX+size/2,(float)Math.sqrt(size*size-(size/2)*(size/2)));
	}
}