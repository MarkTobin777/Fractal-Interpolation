

//background(255);
//stroke(0);

//translate(width/2,height/2);


void setup() {
  size(1280,1280);
}

float h = 1720;
float h1 = 1720;
float h2 = 1720;
float h3 = 1720;

void draw() {
 background(255);
 stroke(0);
 translate(-150,-250);
 noFill();
 rotate(-PI/20);
 //quad(0,0,h/3,0,h/3,h/3,0,h/3);
 map1(h1);
 map2(h2);
 
 rotate(PI/5);
 
 map1(h1);
 map2(h2);
 save("IFS.jpg");
}


void map1(float h1) {
  h1 *= 0.73;
  
  if (h1>0.5){
    
    // map 1:
  pushMatrix();
  translate(h1/3,h1-h1/3);
  rotate(-PI/8);
  
  stroke(0,50);
  quad(0,0,h1/3,0,h1/3,h1/3,0,h1/3);
  map1(h1);
  map2(h1);
  popMatrix();
  
  }
}

void map2(float h2) {
  h2 *= 0.5;
  
  if (h2>0.5){
    
    // map 2:
  pushMatrix();
  translate(h2/16,h2/16);
  quad(0,0,h2/3,0,h2/3,h2/3,0,h2/3);
  stroke(0,20);
  map1(h2);
  map2(h2);
  popMatrix();
  
  }
}
