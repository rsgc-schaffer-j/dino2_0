float x1;  //x of cactus
float x2;
float s1;  //speed of cactus
float s2;
float a1;  //accesloation of cactus
float a2;
float dinoy;  //dino hight
float dinox; // dino x
float dinos;  //dino speed
float dinoa;  //dino acceloration
float g;  //gravity
int score;
int backGround;
float y1;
float y2;
float a5;
float b1;
float c1;
float line1;
float line2;
float a6;
float c2;
int scorex;
int scorey;

void setup() {
  size(800, 200);
  backGround=255;
  x1 = 900;
  x2 = 1250 ;
  y1=160;
  y2=160;
  s1 = 2;
  s2 = 2.5;
  a1 = 0.2;
  a2 = 0;
  dinoy = 160;
  dinox = 50;
  dinoa = 0;
  dinos = 0;
  g = 0.00;
  score = 0;
  scorex=700;
  scorey=30;
}



void draw() {

  background(backGround);

  //cactus and dino
  stroke(255, 0, 0);
  fill(255, 0, 0);
  ellipse(x1, y1, 50, 50);
  ellipse(x2, y2, 50, 50);
  
  //score
  textSize(15);
  text("Score: "+score, scorex, scorey);
  
  //crazy math stuff
  b1=160-dinoy;
  a5=x1-50;
  a6=x2-50;
  
  //line lengh
  c2=sq(a6)+sq(b1);
  line2=sqrt(c2);
  c1=sq(a5)+sq(b1);
  line1=sqrt(c1);
  
  // speed
  s1 = s1+a1;
  s2 = s2+a2;
  dinos = dinos-dinoa;
  
  //movment
  x1 = x1-s1;
  x2 = x2-s2;
  dinoy=dinoy-dinos;
  dinoa=dinoa+g;

  //if statments
  if (x1 < -50) {
    x1=900;
    s1=2;
    score=score+10;
  }
  if (x2 < -50) {
    x2=900;
    s2=2;
    score=score+10;
  } 
  if (x2 < 900) {
    a2 = 0.2;
  }

  if (dinoy>160) {
    dinoy=160;
    dinos=0 ; 
    dinoa=-0;
    g = 0.00;
  }
  stroke(0, 255, 0);
  fill(0, 255, 0);
  ellipse(50, dinoy, 60, 60);


  if (line2<55) {
    fill(00);
    textSize(100);
    text("GAME OVER", 100, 100);
    a2=0;
    s2=0;
    a1=0;
    s1=0;
    scorex=375;
    scorey=100;
  }

  if (line1<55) {
    fill(0);
    textSize(100);
    text("GAME OVER", 100, 100);
    a1=0;
    s1=0;
    a2=0;
    s2=0;
    scorex=375;
    scorey=130;
  }
}
void keyPressed() {  
  dinoa=-0.8;
  g = 0.07;
}