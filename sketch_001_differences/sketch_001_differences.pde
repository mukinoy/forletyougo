PFont Regular;
PFont Italic;
boolean start = false;
boolean end = true;
color[] OurTrueColors = {#f2e703, #0B0A0A};

int Like = 0;
String[] I = {
  "left", "chocolate", "skeptical", "chatty", "sunny", "fall", "books", "glutton",
  "vodka", "indoors", "hopeless", "resilient", "stay"
};

String[] You = {
  "right", "sorbet", "optimistic", "quiet", "rainy", "winter", "netflix", "vegan",
  "beer", "outdoors", "hopeful", "rigid", "leave"
};



void setup() {
  size(730, 582);
  //Regular = loadFont("GTSectra-20.vlw");
  //Italic = loadFont("GTSectra-Italic-16.vlw");

  //Regular = createFont("GT-Sectra-Fine-Book.ttf", 20);
  //Italic = createFont("GT-Sectra-Fine-Book-Italic.ttf", 16);

  smooth(4);

  Regular = createFont("Times-Roman", 24);
  Italic = createFont("Times-Italic", 16);
  textSize(20);
}


void draw() {
  if (start) {
    }
    else {
      splashScreen();
    }
}

void splashScreen() {
  background(OurTrueColors[1]);
  textAlign(CENTER);
  fill(OurTrueColors[0]);
  textFont(Regular);
  text("for (let you = 90)",width/2, height/2.2);
  textFont(Italic);
  text("click to start",width/2, height/1.5);
}

void mousePressed() {
    if (mouseButton == LEFT) {
     start = true;
     noStroke();
     myTrueColors();
     yourTrueColors();
     ourDifferences();

     fill(OurTrueColors[1]);
     textFont(Italic);
     text("me", 175, 500);
     text("you", 535, 500);

     Like++;
     if (Like > 12) {
     Like = 0;
    }
  }
}

void write_whatILike(String[] I) {
  text(I[+Like], 175, 275);
}

void write_whatYouLike(String[] You) {
  text(You[+Like], 535, 275);
}

void ourDifferences() {
  fill(0, 0, 0);
  textAlign(CENTER);
  textFont(Regular);

  write_whatILike(I);
  write_whatYouLike(You);
}

void myTrueColors() {
  fill(random(120, 250), 47, 119);
  rect(0, 0, 365, 582);
}

void yourTrueColors() {
  fill(0, 170, random(150, 255));
  rect(365, 0, 365, 582);
}
