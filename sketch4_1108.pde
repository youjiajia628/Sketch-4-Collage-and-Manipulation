////////////////////////////////////////////////////////////////////////////////////////////////////////////
////////////////////////////////////////////////////////////////////////////////////////////////////////////
///// The texts below are coming from the Broadway Show "Waitress".                                            /////
///// I hope someday somebody, wants to hold you for twenty minutes straight and that's all they do.   /////
///// They don't pull away. They don't look at your face. They don't try to kiss you.                  /////
///// All they do is wrap you up in their arm and hold on tight, without an ounce of selfishness to it./////
///// -- Jenna                                                                                                /////
////////////////////////////////////////////////////////////////////////////////////////////////////////////
////////////////////////////////////////////////////////////////////////////////////////////////////////////

PFont caviarDream;
PImage universe;
float x;
float y;

void setup(){
   smooth();
   size(1920,1079);
   universe = loadImage("universe1.jpg");   //load image
   image(universe, 0, 0);
   caviarDream = createFont("AdobeNaskh-Medium-48", 40);
   textFont(caviarDream);
  
 }
 
 void draw(){
   
    frameRate(1.8);
   
    //load image again and play with pixel painting
    universe = loadImage("universe1.jpg");   
    image(universe, 0, 0);
       for (int i = 0; i < random(550,1000); i++) {
        float x = random(width);
        float y = random(height);
        color c = universe.get(int(x),int(y));
        fill(c,random(85,120));
        noStroke();
        ellipse(x, y, 30, 30);
     }
    
     // rotate text random
     rotate(random(-.8,+.8)); 
     fill(135, 190, 224, random(90,180));
    
       textSize(50);
       text("I hope someday somebody", random(690), 130);
       text("wants to hold you for twenty", 690, 180);
       text("minutes straight and that's all they do.", random(690), 230);
       
       // 230+100 space between text
       text("They don't pull away.", 690, 330);  
       text("They don't look at your face.", random(690), 380);
       text("They don't try to kiss you.", 690, 430);
       text("All they do is wrap you up in", random(690), 480);
       text("their arm and hold on tight,", 690, 530);
       text("without an ounce of selfishness to it.", random(690), 580);

   
 }
