public void setup()
{
	size(800,800);
	background(0, 0, 0);
	noStroke();
}
public void draw()
{
	sierpinski(200, 450, 400);
}
public void mouseDragged()//optional
{

}
public void sierpinski(int x, int y, int len) 
{
	if(len < 20) {
		fill((int)(Math.random()*255), (int)(Math.random()*255), (int)(Math.random()*255));
		triangle(x, y, x-len/2, y+len, x+len/2, y+len);
	} else {
		sierpinski(x, y, len/2);
		sierpinski(x+len/2, y, len/2);
		sierpinski(x+len/4, y-len/2, len/2);
	}
		
}