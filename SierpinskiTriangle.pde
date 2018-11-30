ArrayList<Equitri> triangles=new ArrayList<Equitri>();
void setup()
{
	size(500,500);
	background(0,0,0);
	//base triangle
	triangles.add(new Equitri(50,423.2,400));
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
public void split(int whereSplit)
{
	//variables and first line splits main triangle into bottom left one
	float newSize=triangles.get(whereSplit).halfSize();
	float x=triangles.get(whereSplit).getX();
	float y=triangles.get(whereSplit).getY();
	//top triangle x0.1275 is to account for the rounding errors
	triangles.add(new Equitri(x+newSize/2,y-newSize+newSize*0.1275,newSize));
	//bottom right triangle
	triangles.add(new Equitri(x+newSize,y,newSize));
}
public class Equitri
{
	float cornX, cornY, size;
	public Equitri(float corn1X, float corn1Y, float length)
	{
		cornX=corn1X;
		cornY=corn1Y;
		size=length;
	}
	public float halfSize()
	{
		//returns half its size after it halves itself
		size/=2;
		return size;
	}
	public float getX(){return cornX;}
	public float getY(){return cornY;}
	public float getSize(){return size;}
	public void show()
	{
		stroke(0,0,0);
		fill(255,255,255);
		triangle(cornX,cornY,cornX+size,cornY,cornX+size/2,cornY-(float)(0.5*size*Math.sqrt(3)));
	}
}
public void mousePressed()
{
	int indexSize=triangles.size();
	for(int i=0; i<indexSize; i++)
	{
		split(i);
	}
}
public void keyPressed()
{
	if(key==' ')
	{
		triangles.clear();
		triangles.add(new Equitri(50,423.2,400));
	}
}