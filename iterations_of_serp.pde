void setup(){
  size(1280,1280);
  
}

float x;
float y;
float len = 900;
int lvl;
int max = 3;


void draw(){
  noStroke();
  translate(-400,200);
  background(255);
  fill(255,255,0);
  //tri(width/2, height/2, len);
  divide(width/2, height/2, len, 1,5); // change number of iterations here to generate different terms in the sequence. 
   save("serpiter.jpg");
}

void divide(float x, float y, float l, int lvl, int max){
 if (lvl == max){
  tri(x,y,l); 
   
 } else{
   fill(255,0,200);
   divide(x+l/2,y,l/2,lvl+1,max);
   fill(255,255,0);
   divide(x,y,l/2,lvl+1,max);
   fill(0,255,255);
   divide(x+l/4,y- sin(PI/3)* l/2,l/2,lvl+1,max);
 }
}



void tri(float x, float y, float l){
 triangle(x,y,x+l/2,y-sin(PI/3)*l,x+l,y); 
}
