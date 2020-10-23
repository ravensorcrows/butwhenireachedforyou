float inc = 0.1;
float scl = 10;
float cols,rows;
float zoff = 3 ;
float yoff =0.0; 
float xoff = 0.0;
  int s = second();
  int mn = minute();
  int h = hour();
int m = millis();


void setup() {
  fullScreen(P3D);
   hint(DISABLE_DEPTH_TEST);
  smooth(2);
  cols = floor(width / scl);
  rows = floor(height/scl);
  
  frameRate(h*0.6);
}

void draw(){
 background(255);
 
  float yoff = 0;
  for (float y= 0; y <rows; y++) {
    float xoff =0;
    for (float x =0; x <cols; x++) {
      if (mousePressed){
      xoff += inc;
      stroke(0);
      smooth(8);
      push();
      translate(scl, scl);
      rotate(random(10));
      stroke(random(mn),10,10,10);
      line(scl,scl,scl,scl);
      fill(random(150),random(10));
      rect(scl, scl, scl,scl);
      pop();
    } else {
         xoff += inc;
      smooth(8);
      push();
      translate(scl, scl);
      rotate(random(10));
      pop();
      
  }
     {
     for (x =0; x <cols; x++) {
      xoff += inc;
      smooth(8);
      push();
      translate(scl, scl);
      rotate(random(100));
      if(mousePressed){
        noFill();
    rect(x*s,y*s, scl,scl);
      }else{
      ellipse(x*s,y*s,scl,scl);
      
      }
      pop();
    }}
    
  yoff += inc;
  
  zoff +=3;
    
  }
  
  {
          lights();
    ambientLight(random(250),random(15),random(55));
sphere(10000);
 rotateX( map(mouseY,0,height,0,TWO_PI));
  rotateY( map(mouseX,0,width,0,TWO_PI));
  }
         lights();
    ambientLight(random(200),random(15),random(55));
noStroke();
fill(random(m*255), random(s*300), random (s*255),50);
translate(width/2,height/2);
sphereDetail(mouseX/50, mouseY/s);
if (mousePressed){
    rect(random(s^m),random(s^m), scl,scl);
    noFill();
} else{ 
sphere(random(s*15));
}

    }
}
