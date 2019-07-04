HScrollbar hs1 = new HScrollbar(100, 800, 500, 30, 30);
int black = color(0);
float x = 100;
float y = 50;
float w = 60;
float h = 30;
boolean axis=false;
void setup() {
  size(1400, 1400);
  background(255, 255, 255);
}


void draw() {
  hs1.update();
  hs1.display();
  // draw graph -- center on origin
  rect(x, y, w, h);
  fill(255);
  if (mousePressed) {
    if (mouseX>x && mouseX <x+w && mouseY>y && mouseY <y+h) {
      if (axis) {
        axis=false;
      } else {
        axis=true;
      }
      //do stuff
    }
  } 
  translate(0, 0);
  stroke(255, 0, 0);
  // draw axes
  if (axis) {
    line(-1000, 400, 3000, 400);
    line(1000, -1000, 1000, 2000);
  }

  for (int i=0; i<50000; ++i) {
    int a=0;
    float cy, cx;
    do {
      cx= random(2)*(random(1)<0.5 ? -1 : 1);
      cy=random(2)*(random(1)<0.5 ? -1 : 1);
    } while ((400*cx+600>x && 400*cx+600 <x+w && 400*cy+400>y && 400*cy+400 <y+h));

    complex c=new complex(cx, cy);


    for (int j=0; j<(int)(hs1.getPos()-100)*0.7; ++j) {

      c.square();
      c.update();

      if (c.getModule()>2) {

        set((int)(400*cx)+600, (int)(400* cy)+400, colorIt(j));
        a=1;
        continue;
      }
    }
    if (a==0) {
      set((int)(400*cx)+600, (int)(400* cy)+400, black);
    }
  }
}
int colorIt(int j) {
  return color(20, 20+2*j, 20*j );
}