public void setup()
{
	size(500,500);
	
}
public void draw()
{
	int x =150;
	int y =450;
	int len=250; 
	sierpinski(x, y, len);

}
public void mouseDragged()//optional
{

}
public void sierpinski(int x, int y, int len) 
{
	if(len < 20){
		triangle(x,y,x+len/2,y,x+len/4,y-len/2);
	}
	else{
		//triangle(x,y,x+len/2,y,x+len/4,y-len/2);
		fill(0);
		sierpinski(x,y,len/2);
		sierpinski(x+len/2,y,len/2);
		sierpinski(x+len/4,y-len/2,len/2);
	}
}