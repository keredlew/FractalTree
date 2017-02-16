PImage img;
private double fractionLength = .75; 
private int smallestBranch = 10; 
private double branchAngle = .2;  
public void setup() 
{   
	size(1000,1000);    
	noLoop(); 
	img = loadImage("steve_harvey.jpg");
} 
public void draw() 
{   
	image(img,0,0,300,300);
	image(img,700,0,300,300);
	image(img,0,700,300,300);
	image(img,700,700,300,300);
	  image(img,0,0,1000,1000); 
	stroke(0,0,255);   
	line(500,1000,500,850);   
	drawBranches(500,850,150,3*Math.PI/2);

} 
public void drawBranches(int x,int y, double branchLength, double angle) 
{   
	//your code here  
	double angle1 = angle - branchAngle;
	double angle2 = angle + branchAngle;
	int endX1 = (int)(branchLength*Math.cos(angle1)+x);
	int endY1 = (int)(branchLength*Math.sin(angle1)+y);	
	int endX2 = (int)(branchLength*Math.cos(angle2)+x);
	int endY2 = (int)(branchLength*Math.sin(angle2)+y);
	branchLength*=fractionLength;
	line(x,y,endX1,endY1);
	line(x,y,endX2,endY2);
	if(branchLength>smallestBranch)
	{
		drawBranches(endX1, endY1, branchLength, angle1);
		drawBranches(endX2, endY2, branchLength, angle2);
	}
} 
public void keyPressed()
{
}