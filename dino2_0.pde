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
void setup(){
  size(800,200);

  x1 = 900;
  x2 = 1250 ;
  s1 = 2;
  s2 = 2;
  a1 = 0.2;
  a2 = 0;
  dinoy = 160;
  dinox = 50;
  dinoa = 0;
  dinos = 0;
 g = 0.00;
  }



void draw(){
    background(255);
     //if (keyPressed == true) {
   //dinoy = 90;
  //} else {
    //dinoy = 160;
  //}
 //cactus and dino
   stroke(255,0,0);
  fill(255,0,0);
  ellipse(x1, 160, 50, 50);
  ellipse(x2, 160, 50, 50);
   text("dinoa is" + dinoa,150,75);
   text("dinos is" + dinos,150,60);
   text("dinoy is" + dinoy,150,45);
  
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
  if (x1 < -50){
    x1=900;
    s1=2;
  }
  if (x2 < -50){
    x2=900;
    s2=2;
  } 
   if (x2 < 900){
    a2 = 0.2;
  }
  //if(dinos==0.2){
  //dinos=-5 ; 
  // dinoa=0.5 ;
  // g = 0.005;
  //}
if(dinoy>160){
dinoy=160;
dinos=0 ; 
   dinoa=-0;
   g = 0.00;
}
stroke(0,255,0);
  fill(0,255,0);
  ellipse(dinox,dinoy,60,60);
}
void keyPressed(){ 
   dinos=6 ; 
   dinoa=0.2;
   g = 0.005;
}