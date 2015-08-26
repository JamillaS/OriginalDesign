int moveAcross = 5;
int moveDown = 5;
int far = 100;

void setup()
{
	size(400, 400);
}
int x = 10;

void draw()
{
	far = far + (int)(Math.random() * 100);
	background(far,far,far);
	moveAcross += 3;
	moveDown += 3;
    picture();
  	paddle();
  
}
void picture()
{
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


	



