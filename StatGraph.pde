String name = "Character Name";

color shapeColor = #7F7F7F;

float maxStat = 25;

float str = 15;
float dex = 14;
float con = 13;
float Int = 12;
float wis = 10;
float cha = 8;

PFont font;
PFont font2;

void setup()
{
  size( 700, 800 );
  textAlign(CENTER);

  font = createFont("SEVESBRG.TTF", 32);
  font2 = createFont("nameFont.otf", 32);

  background(0);
  stroke(255);
  strokeWeight(5);

  //Name
  textFont(font2);
  textSize(60);
  text(name, width/2, 70);

  //Lines
  push();
  translate(350, 450);
  line(0, -300, 0, 300);
  rotate(TWO_PI/3);
  line(0, -300, 0, 300);
  rotate(TWO_PI/3);
  line(0, -300, 0, 300);
  pop();

  //Labels
  textFont(font);
  fill(255);
  text("STR", 350, 135);
  text("DEX", 650, 285);
  text("CON", 650, 625);
  text("INT", 350, 785);
  text("WIS", 50, 625);
  text("CHA", 50, 285);

  drawShape();

  save(name + ".png");
}

void drawShape()
{
  fill(shapeColor, 127);
  stroke(shapeColor, 200);
  strokeWeight(1);

  float verticalMultiplier = 300/maxStat;

  beginShape();
  //Str
  vertex(350, 450-(str*verticalMultiplier));
  //Dex
  vertex(350+(260*(dex/maxStat)), 450-(150*(dex/maxStat)));
  //Con
  vertex(350+(260*(con/maxStat)), 450+(150*(con/maxStat)));
  //Int
  vertex(350, 450+(Int*verticalMultiplier));
  //Wis
  vertex(350-(260*(wis/maxStat)), 450+(150*(wis/maxStat)));
  //Cha
  vertex(350-(260*(cha/maxStat)), 450-(150*(cha/maxStat)));
  //End (str again)
  vertex(350, 450-(str*verticalMultiplier));
  endShape();
}

//STR:
//350,450  to  350,150

//DEX:
//350,450  to  610,300

//CON:
//350,450  to  610,600

//INT:
//350,450  to  350,750

//WIS:
//350,450  to  90,600

//CHA:
//350,450  to  90,300
