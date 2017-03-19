/*This program recreates a Super Mario 
scene using rotate(), translate(), and
an if statement.*/
//Declare and Assign
import processing.sound.*;
SoundFile file;
int xPos = 0;
int oHeight = 2;
int degree = 15;
int deg = 180;
int de = 80;
int d = 3;


void setup() {
  
size(800,800);
file = new SoundFile (this, "SuperMario.mp3");
file.loop();

}

void draw() {

float square = 6;
  
background(15,149,245);

stroke(255);

// CREATE ISLAND
  fill(227,168,86,191);
  noStroke();
  ellipse(0,width*6/7,500,500);
  ellipse(0,800,600,600);
  
//CREATE OCEAN

  fill(15,49,245,191);
  rect(0,oHeight,width,width/2);
  if(oHeight != width*2/3){
    oHeight = width*2/3;
  }else{
    oHeight -= 10;
    
  }
    

// CREATE CLOUDS
  translate(0,0);
  fill(255,255,255,191); 
  ellipse(xPos,height/7,width/4,width/10);
  fill(255);
  ellipse(xPos,height/5,width/4,width/10);
  xPos = xPos + 4;
  if(xPos > width+(width/10)){
    xPos = 0;
  }
  
 // CREATE PALM TREE
 makeTree(width/20,height/2);
 makeTree(width/20,height/2+square*5);
 makeTree(width/20,height/2-square*5);
 makeTree(width/20,height/2-square*10);
 makeTree(width/20,height/2-square*15);
 makeTree(width/20,height/2-square*20);
 makeTree(width/20,height/2-square*25);
 makeTree(width/20,height/2-square*30);
 
// CREATE GREEN TUNNEL
  int tunnelWidth = 100;
  int tunnelHeight = 65;
  noStroke();
  fill(68,255,0);
  rect(width*3/4,height*3.5/6,tunnelWidth,tunnelHeight);
  rect(width*.725,height-(tunnelHeight*5.5), tunnelWidth+40,tunnelHeight-40);
  fill(68,255,0,191);
  noStroke();
  rect(width*3/4,height*4/6,tunnelWidth,tunnelHeight*6);
  
// CREATE QUESTION BLOCKS
 fill(255,255,0);
 noStroke();
 strokeWeight(1);
 rect(width/3,height/3,square*10,square*9);
 fill(158,87,36);
 stroke(10);
 strokeWeight(4);
 line(width/3+square*10,height/3,width/3-square*10,height/3);
 line(width/3+square*10,height/3+square*9,width/3-square*10,height/3+square*9);
 rect(width/3+square*10,height/3,square*5,square*3);
 rect(width/3+square*15,height/3,square*5,square*3);
 rect(width/3+square*10,height/3+square*3,square*10,square*3);
 rect(width/3+square*12.5,height/3+square*3,square*5,square*3);
 rect(width/3+square*10,height/3+square*6,square*5,square*3);
 rect(width/3+square*15,height/3+square*6,square*5,square*3);
 
 rect(width/3-square*5,height/3,square*5,square*3);
 rect(width/3-square*10,height/3,square*5,square*3);
 rect(width/3-square*10,height/3+square*3,square*10,square*3);
 rect(width/3-square*7.5,height/3+square*3,square*5,square*3);
 rect(width/3-square*10,height/3+square*6,square*5,square*3);
 rect(width/3-square*5,height/3+square*6,square*5,square*3);
 stroke(255);
 strokeWeight(10);
 line(width/3+square*6,height/3+square,width/3+square*6,height/3+square*3);
 line(width/3+square*2,height/3+square,width/3+square*2,height/3+square*2);
 line(width/3+square*4,height/3+square*4,width/3+square*4,height/3+square*5);
 line(width/3+square*2,height/3+square,width/3+square*6,height/3+square);
 line(width/3+square*6,height/3+square*3,width/3+square*4,height/3+square*4);
 fill(255);
 noStroke();
 ellipse(width/3+square*4,height/3+square*8,square*2,square*2);


// CREATE MARIO
  pushMatrix();
  translate(mouseX,mouseY);
  int handWidth = 12;
  int handHeight = 18;
    noStroke();
    
  //head
  fill(232,174,107);
  ellipse(handWidth+handHeight+3,-square*4,handWidth*4,handHeight*2);
 //shirt
  fill(0);
  arc(handWidth+handHeight+3,0,handHeight*3+square*2,handHeight*2,0,PI*2,OPEN);
  //overalls
  fill(255,0,0);
  rect(handWidth+square,-square*2.25,square,square*3);
  rect(handWidth*3.5,-square*2.25,square,square*3);
  quad(handWidth-square,0,handWidth*4+square,0,handWidth*4+square,handHeight,handWidth,handHeight);
  rect(handWidth,handHeight,square*3,square);
  rect(square*6,handHeight,square*3,square);
  //shoes 
  fill(0);
  rect(handWidth,handHeight+square,square*3,square);
  rect(handWidth-square,handHeight+(square*2),square*3+square,square);
  rect(handWidth*3,handHeight+square,square*3,square);
  rect(handWidth*3,handHeight+(square*2),square*3+square,square);
  //buttons
  fill(255,255,0);
  ellipse(handWidth+(square*2),square,square,square);
  ellipse(handWidth*3.5,square,square,square);
  //hands
  fill(232,174,107);
  rect(4-square,4-square,handWidth,handHeight);
  rect(square*1.5,square*2/3,square,square);
  rect(handWidth+42,0,handWidth,handHeight);
  rect(handWidth+36,square*2/3,square,square);
  //hat
  fill(255,0,0);
  rect(handWidth,-handHeight*2-square,square*7,square);
  rect(handWidth,-handHeight*2-(square*2),square*5,square);
  //eyes
  fill(0);
  rect(handWidth*3.25,-handHeight*2,square,square);
  //mustache
  rect(handWidth*3.25+square,-handHeight*1.7,square,square);
  rect(handWidth*3.25,-handHeight*1.7+square,square*4,square);
  //hair
  rect(handWidth-square,-handHeight*2,square,square*3);
  rect(handWidth,-handHeight*2,square*3,square);
  rect(handWidth,-handHeight-square,square,square);
  rect(handWidth+square,-handHeight*2,square,square*2);
  rect(handWidth+(square*2),-handHeight-(square*2),square/2,square);
  //nose
  fill(232,174,107);
  rect(handWidth*3.25+(square*2.5),-handHeight*1.7,square,square);
  rect(handWidth*3.25+(square*2),-handHeight*2,square,square);
popMatrix();
// PALM TREE
  pushMatrix();
  translate(width/15,height/5);
  rotate(radians(degree));
  degree = degree + 10;
   fill(68,255,0);
   stroke(0);
   strokeWeight(5);
   ellipseMode(CENTER);
   ellipse(0, 0,30,150);
  popMatrix();
  
  pushMatrix();
  translate(width/15,height/5);
  rotate(radians(deg));
  deg = deg - 5;
  fill(68,255,0);
  stroke(0);
  strokeWeight(5);
  ellipseMode(CENTER);
  ellipse(0, 0,30,150);
  popMatrix();
  
  pushMatrix();
  translate(width/15,height/5);
  rotate(radians(de));
  de = de - 100;
  fill(68,255,0);
  stroke(0);
  strokeWeight(5);
  ellipseMode(CENTER);
  ellipse(0, 0,30,150);
  popMatrix();
  
  pushMatrix();
  translate(width/15,height/5);
  rotate(radians(d));
  d = d - 500;
  fill(68,255,0);
  stroke(0);
  strokeWeight(5);
  ellipseMode(CENTER);
  ellipse(0, 0,30,150);
  popMatrix();

}
float xCor = 150;
float yCor = height/2;
float square = 6;
void makeTree(float xCor, float yCor){
  fill(227,168,86);
  stroke(0);
  strokeWeight(5);
  rect(xCor,yCor,square*5,square*5);
}