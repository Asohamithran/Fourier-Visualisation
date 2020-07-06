float time =0;
float radius;
float x,y,prevx,prevy;
FloatList wave;
int k=0,n;
void setup(){
  wave=new FloatList();
  size(800,600);
  background(0);
 
}
void draw(){
 
  background(0);
  translate(100,200);
  stroke(255);
  noFill();
  x=0;
  y=0;
  for(int k=0;k<3;k++){
    n=2*k+1;
    prevx=x;
    prevy=y;
  radius= 50*(4/(n*3.14));
  x+=radius*cos(n*time);
  y+=radius*sin(n*time);
  
  ellipse(prevx,prevy,2*(radius),2*(radius));
  stroke(0,255,0);
  noFill();
  stroke(255);
  line(prevx,prevy,x,y);
  stroke(255);
   ellipse(x,y,6,6);
  }
  wave.append(y);
  noFill();
  translate(100,0);
  
 
  line(x-100,y,0,wave.get(wave.size()-1));
  wave.reverse();
  
  beginShape();
  
 for(int i=0;i<wave.size();i++){
    vertex(i,wave.get(i));
 }
 
  endShape();
  wave.reverse();
 
 time+=0.045;
}

  
