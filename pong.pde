float circleX=random(10,630),circleY=100,colorRect=255,colorCir=255,rectY,grav=2,xChange=random(-2,2);
int score=0;

void setup(){
  size(640, 360);
  rectY=height-30;
  //circleX=300
  //circleY=100
}

void draw(){
  background(50);
  //fill(255,colorCir,colorCir);
  fill(random(0,255),random(0,255),random(0,255));
  circle(circleX,circleY,20);
  rectMode(CENTER);
  fill(colorRect);
  rect(mouseX,rectY,100,20);
  text("score:"+score,600,10);
  circleY=circleY+grav;
  //grav+=1;
  circleX+=xChange;
  //colorCir=sqrt((circleX-mouseX)*(circleX-mouseX)+(circleY-rectY)*(circleY-rectY));
  if(circleX<=10||circleX>=630){
    xChange=-xChange;
  }
  if(circleY==rectY-20 && circleX>=mouseX-50 && circleX<=mouseX+50){
    grav=-grav;
    score+=1;
  }
  if(circleY<=50){
    grav=-grav;
  }  
  rect(circleX,30,100,20);
}
