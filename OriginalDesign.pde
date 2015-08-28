int moveAcross = 5;
int moveDown = 5;
int far = 100;
int birdie;

void setup()
{
	size(400, 400);
}
int x = 10;

void draw()
{

	far = far + (int)(Math.random() * 100);
	background(far,far,far);
	birdFace();
	moveAcross += 3;
	moveDown += 3;
    picture();
  	paddle();
  	mousePressed();
  
}
void picture()
{
	background(30, 200, 100);
	birdFace();
	fill(250,0,100);
 	ellipse(moveAcross,moveAcross,10,10);
 	ellipse(moveAcross/5,moveAcross/5,10, 10);
 	ellipse(moveAcross + 20,moveAcross + 40,10, 10);
 	ellipse(mouseX,mouseY- 30,10, 10);
 	fill(0,250,100);
 	rect(moveDown,10,10,10);
 	rect(moveAcross*2, moveAcross*2, 10, 10);
 
 	
}
void paddle()
{
	ellipse(20, 20, 100,100);
	fill(30, 20, 100);
	rect(mouseY, mouseX, 5, 5);
}
void mousePressed()
{
	frameRate(15);
	noStroke();
	fill(mouseY, mouseY/5, mouseX, 20);
	ellipse(mouseY, mouseX, mouseX, mouseY);
}
void birdFace()
{
	ellipse(50, birdie, 100, 100);
	ellipse(250, birdie, 100, 100);
	triangle(50, 250, 250, 250, 150, 350);
	for(int birdie = 100; birdie  > 120; birdie = birdie + 10)
		{
			ellipse(0, 0, 10, 10);
			if(birdie > 200)
			{
				birdie = 100;
			}
		}
}





