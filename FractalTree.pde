private double fractionLength = .8; 
private int smallestBranch = 10; 
private double branchAngle = .3;  
public void setup() 
{   
	size(640,480);   
	noLoop(); 
} 
public void draw() 
{   
    background(150, 190, 255);  
	strokeWeight(4);
	stroke(86, 41, 28);
	line(320,480,320,380);
	drawBranches(320, 380, 100, 3*Math.PI/2);
} 
public void drawBranches(int x,int y, double branchLength, double angle) 
{   
	branchLength = branchLength * fractionLength;
	double angle1 = angle + branchAngle;
	double angle2 = angle - branchAngle;
	int endX1 = (int)(branchLength*Math.cos(angle1) + x); 
	int endY1 = (int)(branchLength*Math.sin(angle1) + y);
	int endX2 = (int)(branchLength*Math.cos(angle2) + x); 
	int endY2 = (int)(branchLength*Math.sin(angle2) + y);
	strokeWeight(3);
	if(branchLength > 20) {
		stroke(86, 41, 28);
	} else {
		stroke(60, 147, 105);
	}
	line(x, y, endX1, endY1);
	line(x, y,endX2, endY2);
	if (branchLength > 10) {
		drawBranches(endX2, endY2, branchLength, angle2);
		drawBranches(endX1, endY1, branchLength, angle1);
	}
} 