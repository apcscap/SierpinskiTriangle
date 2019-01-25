public void setup()
{
	size(500,500);
	sierpinski(250.0, 0.0, 1000);
}
public void draw()
{

}
public void mouseDragged()//optional
{

}
public void sierpinski(float x, float y, int len) 
{
	if(len < 20) {
		triangle(x, y, x-len, y+len, x+len, y+len);
	} else {
		sierpinski(x, y, len/2);
		sierpinski(x-len/2, y+len/2, len/2);
		sierpinski(x+len/2, y+len/2, len/2);
	}
		
}