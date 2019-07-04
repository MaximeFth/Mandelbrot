
int black = color(0);


void setup() {
  size(1400, 1400);
  background(255, 255, 255);
}


void draw() {
  for (int i=0; i<1000; ++i) {
    int a=0;
    float cx= random(2)*(random(1)<0.5 ? -1 : 1);
    float cy=random(2)*(random(1)<0.5 ? -1 : 1);

    complex c=new complex(cx, cy);


    for (int j=0; j<20; ++j) {

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
  return color(20, 20, 20*j % 250);
}