// demonstrates how iterations of a fractal interpolation function are generated deterministically. 
// change the value of "float r" to change number of iterations. 

void setup() {
  size(1280,1280);
}
float r = 10;
float h = 1720;
float h1 = 1720;
float h2 = 1720;


void draw() {
 background(255);
 stroke(0);
 translate(300,300);
 noFill();
 strokeWeight(1);
 quad(0,0,h/2,0,h/2,h/2,0,h/2);
 strokeWeight(15);
 stroke(255,0,0);
 point(h/2,h/2);
 point(h/4,h/4);
 point(0,h/2);
 map1(h1);
 map2(h2);
 
 save("IFS.jpg");
}


void map1(float h1) {
  h1 *= 0.5;
  
  if (h1>r){
    
    // map 1:
  pushMatrix();
  translate(0,h1-h1/2);
  shearY(-PI/4);
  strokeWeight(1);
  stroke(0);
  quad(0,0,h1/2,0,h1/2,h1/2,0,h1/2);
  map1(h1);
  map2(h1);

  popMatrix();
  
  }
}

void map2(float h2) {
  h2 *= 0.5;
  
  if (h2>r){
    
    // map 2:
  pushMatrix();
  translate(h2/2,0);
  shearY(PI/4);
  strokeWeight(1);
  stroke(0);
  quad(0,0,h2/2,0,h2/2,h2/2,0,h2/2);
  map1(h2);
  map2(h2);
  popMatrix();
  
  }
}
