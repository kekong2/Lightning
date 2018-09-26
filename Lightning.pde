int startX = 0;
int startY = 150;
int endX = 0;
int endY = 150;

void setup()
{
  size(300,300);
  strokeWeight(5);
}
void draw()
{
	int x = (int) (Math.random()*255);
	stroke(x,x,x);
	while (endX <= 300){
		endX = startX + (int)(Math.random() * 9);
		endY = startY + (int)(Math.random() * 19)-9;
		line(startX,startY,endX,endY);
		startX = endX;
		startY = endY;
	}

}
void mousePressed()
{
	startX = mouseX;
	startY = mouseY;
	redraw();
}

