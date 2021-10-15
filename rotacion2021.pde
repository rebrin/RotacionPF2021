ArrayList <PVector>vertices;
float angulo=1;
void setup(){
  size(800,600);
  strokeWeight(3);
  vertices=new ArrayList();
  vertices.add(new PVector(150,150));
  vertices.add(new PVector(250,150));
  vertices.add(new PVector(250,250));
  vertices.add(new PVector(150,250));
  //noLoop();
}

void draw(){
  pintar();
  rotar(angulo);
  pintar();
}

void rotar(float teta){
  //pasarlo a radianes
  teta=(teta*PI)/180;
  for(PVector v:vertices){
     v.x=(v.x*cos(teta))-(v.y*sin(teta));
     v.y=(v.x*sin(teta))+(v.y*cos(teta));
  }
}

void pintar(){
  beginShape();
  for(PVector v:vertices){
     vertex(v.x,v.y);
  }
  endShape(CLOSE);
}

void mouseClicked() {
  //angulo++;
  //angulo%=360;
}
