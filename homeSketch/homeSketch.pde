//Ex06_3 = for loops

color [] backstage = {#070814, #070814, #FE0003, #f2e703, #005CE5, #070814};
color [] palette = backstage;

/*
#070814 black
 #FE0003 red
 #F6F6F6 white
 #f2e703 yellow
 #005CE5 blue
 */



int s = 105;
PFont Regular;

public void settings () {
  smooth(4);
}

void setup() {
  size(730, 582);
  smooth();
  background(palette[0]);
  noStroke();
  frameRate(20);

  Regular = createFont("Times-Roman", 14);
  textFont(Regular);

  for (int x = 0; x < width; x+= s) {
    for (int y = 0; y < height; y+=s) {
      fill(palette[int(random(0, 5))]);
      rect (x, y, s, s);
    }
  }
}


void draw() {
  /*randomly select s, but make it at the beginning of
   one of the squares in the drawing.*/
  fill(palette[int(random(0, 5))]);
  int x = int(random(width/s))*s;
  int y = int(random(height/s))*s;
  rect(x, y, s, s);

  noStroke();
  fill(palette[0]);
  text("let go", x+35, y-50);
}
