int Me = 300;
int You = 300;
int Dragging = 3;
int myMemories = 255;
int yourMemories = 475;
int [] reflectRelationship  = {300, 900, 1030};
int [] WeAreNotMeantToBe = {255, 475};
PFont Regular;
PFont Italic;
boolean start = false;
boolean end = true;
color[] OurTrueColors = {#FE0003, #005CE5, #F6F6F6, #0B0A0A};

void setup() {
  size(730, 582);
  smooth(4);
  Regular = createFont("Times-Roman", 24);
  Italic = createFont("Times-Italic", 16);
  textSize(20);
}

void draw() {
   if (start) {
     disjunctiveUnion();
    }
    else {
      splashScreen();
    }
}

void mousePressed() {
    if (mouseButton == LEFT) {
      start = true;
    } 
   
    if (mouseButton == RIGHT) {
      start = false;
      splashScreen();
     }
}

void splashScreen() {
  background(OurTrueColors[3]);
  textAlign(CENTER);
  fill(OurTrueColors[1]);
  textFont(Regular);
  textSize(20);
  text("for (let you = 90)",width/2, height/2.2);
  textFont(Italic);
  text("click to start",width/2, height/1.5);
}

void disjunctiveUnion() {
  background(OurTrueColors[2]);
  noStroke();
  textFont(Italic);
  fill(OurTrueColors[0], 200);
  ellipse(myMemories, 290, Me, Me);
  
  fill(OurTrueColors[1], 200);
  ellipse(yourMemories, 290, You, You);
  
  fill(OurTrueColors[3]);
  text("me", 175, 500);
  text("you", 535, 500);
}

void mouseDragged() 
{
  myMemories = myMemories - Dragging;
  if (myMemories < - reflectRelationship[0]) {
    myMemories = WeAreNotMeantToBe[0];
  }
  
  yourMemories = yourMemories + Dragging;
  if (yourMemories > reflectRelationship[2]) {
    yourMemories = WeAreNotMeantToBe[1];
  }

  if ((myMemories < reflectRelationship[0]) 
  && (yourMemories > reflectRelationship[1])) {
    Lesson4BothOfUs();
  }
}

void Lesson4BothOfUs() {
  textFont(Italic);
  textAlign(CENTER);
  text("only by dragging", 365, 250);
  text("we are realizing", 365, 270);
  text("our disjunctive union", 365, 290);
}
