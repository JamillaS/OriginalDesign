import processing.core.*; 
import processing.data.*; 
import processing.event.*; 
import processing.opengl.*; 

import java.util.HashMap; 
import java.util.ArrayList; 
import java.io.File; 
import java.io.BufferedReader; 
import java.io.PrintWriter; 
import java.io.InputStream; 
import java.io.OutputStream; 
import java.io.IOException; 

public class OriginalDesign extends PApplet {

int moveAcross = 5;
int moveDown = 5;
int far = 100;

public void setup()
{
	size(400, 400);
}
int x = 10;

public void draw()
{
	far = far + (int)(Math.random() * 100);
	background(far,far,far);
	moveAcross += 3;
	moveDown += 3;
    picture();
  	paddle();
  
}
public void picture()
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
public void paddle()
{
	ellipse(20, 20, 100,100);
	fill(30, 20, 100);
	rect(mouseY, mouseX, 5, 5);
}


	



  static public void main(String[] passedArgs) {
    String[] appletArgs = new String[] { "OriginalDesign" };
    if (passedArgs != null) {
      PApplet.main(concat(appletArgs, passedArgs));
    } else {
      PApplet.main(appletArgs);
    }
  }
}
