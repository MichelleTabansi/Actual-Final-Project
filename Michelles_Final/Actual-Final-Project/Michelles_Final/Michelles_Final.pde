import processing.sound.*;
SoundFile s;
//keeps pace with poem
int tracker =0;
FadingLine title;
//track hand movement;
int move =0;
//poem
Poem bluebird;
//1st scene bird moving
float moveX =0;
float moveY = 650;
int please=0;
// bar scene zoom out 
float transX =200;
float transY = 600;
int help =0;
float Scale = 2.3;
//images
PImage bird;
PImage moveBird;

PImage opencage;
PImage cage;

PImage moveHand;
PImage hand;

PImage coatPic;
PImage coat;

PImage nopePic;
PImage nope;

PImage sleepPic;
PImage sleep;

PImage weepPic;
PImage weep;

PImage shoutPic;
PImage shout;

PImage manPic;
PImage man;

PImage barPic;
PImage bar;

PImage questPic;
PImage quest;

PImage angryPic;
PImage angry;

PImage happyPic;
PImage happy;

PImage putPic;
PImage put;

PImage singPic;
PImage sing;


//Poem pages
  Page page1;
  Page page2;
  Page page3;
  Page page4;
  Page page5;
  Page page6;
  Page page7;
  Page page8;
  Page page9;
  Page page10;
  Page page11;
  Page page12;
  Page page13;
  Page page14;
  FadingLine last;

void setup(){
   
   imageMode(CENTER);
   size(1000,700);
   //background(0);
   //play poem
     
   title = new FadingLine(400, 350,"Bluebird by Charles Bukowski");
    bluebird = new Poem();
    //setting up the images
         bird = loadImage("flyingblue.png");
     moveBird = createImage(200,200,ARGB);
     
      opencage = loadImage("opencage.png");
     cage = createImage(500,500,ARGB);
     
       hand = loadImage("hand.png");
     moveHand = createImage(536,500,ARGB);
     
        manPic = loadImage("man.png");
     man = createImage(823,853,ARGB);
     
         coatPic = loadImage("coat.png");
       coat = createImage(823,853,ARGB);
       
       sleepPic = loadImage("sleepTogether.png");
       sleep = createImage(571,569,ARGB);
       
          nopePic = loadImage("don't.png");
       nope = createImage(571,569,ARGB);
       
          weepPic = loadImage("weep.png");
       weep = createImage(571,569,ARGB);
       
         barPic = loadImage("barscene.png");
       bar = createImage(1584,689,ARGB);
       
       shoutPic = loadImage("shouting.png");
       shout = createImage(732,512,ARGB);
       
       questPic = loadImage("doyou.png");
       quest = createImage(571,569,ARGB);
       
       angryPic = loadImage("bedroomangry.png");
       angry = createImage(1211,731,ARGB);
       
          happyPic = loadImage("bedroomhappy.png");
       happy = createImage(1211,731,ARGB);
       
          putPic = loadImage("putback.png");
       put = createImage(1211,731,ARGB);
       
       singPic = loadImage("singing.png");
       sing = createImage(745,622,ARGB);
    
   //setting up the pages
    page1 = new Page(bluebird.getLine(0),bluebird.getLine(1),350,50,650,70,35);
    page2 = new Page(bluebird.getLine(2),bluebird.getLine(3),200,50,60,80,10);
    page3 = new Page(bluebird.getLine(4),bluebird.getLine(5),0,210,0,35,20);
    page4 = new Page(bluebird.getLine(6),bluebird.getLine(7),0,50,0,80,27);
    page5 = new Page(bluebird.getLine(8),bluebird.getLine(9),0,110,0,50,12);
    page6 = new Page(bluebird.getLine(10),bluebird.getLine(11),600,50,600,100,10);
    page7 = new Page(bluebird.getLine(12),bluebird.getLine(13),500,150,500,200,10);
    page8 = new Page(bluebird.getLine(14),bluebird.getLine(15),400,250,350,300,12);
    page9 = new Page(bluebird.getLine(16),bluebird.getLine(17),0,50,500,500,8);
    page10 = new Page(bluebird.getLine(18),bluebird.getLine(19),0,80,600,530,0);
    page11 = new Page(bluebird.getLine(20),bluebird.getLine(21),480,400,500,450,0);
    page12 = new Page(bluebird.getLine(22),bluebird.getLine(23),0,50,0,90,0);
    page13 = new Page(bluebird.getLine(24),bluebird.getLine(25),0,50,600,60,0);
    page14 = new Page(bluebird.getLine(26),bluebird.getLine(27),0,50,50,70,10);
     last = new FadingLine(490,50, bluebird.getLine(28));
    tracker++;
     frameRate(10); 
     s = new SoundFile(this, "bluebird.mp3");
    s.play(); 
    

}

void draw(){
  background(0);
  cage(300,350);
     tracker++;
  if(tracker<110){
       title.display(); 
       title.update();
  }
 // if(please==1){
  if(tracker>110){
    page1.display();
    bird(moveX, moveY);
    cage(300,350);
    
    if(moveX<300){
    moveX+=5;
    moveY-=5;
    }
    pushMatrix();
    if(moveX>=200){
        if(move>-550){
          translate(100,move);
            move-=24;
            hand(600,800);
        }
    }
    popMatrix();
   
  }
     if(tracker>170){
       //secondPage();
       background(0);
       firstMan(500,400);
       page2.display();
   }
   if(tracker>200){
     background(0);
     page3.display();
     coated(500,400);
     //thirdPage();
   }
   if(tracker>240){
     
     //fourthPage();
     pushMatrix();
          background(0);
     translate(transX,transY);
      scale(Scale);
       bar(0,0);
           if(help<125){
             Scale-=0.012;
              transX+=2.173913043;
              transY-=1.52173913;  
          help++;  
       } 
       popMatrix();
       page4.display();
       if(tracker>280){
         page5.display();
         //fifthPage();
       }
   }
   
   if(tracker>325){
    background(0);
    shouting(500,350);
     page6.display();
     if(tracker>335){
     page7.display();
     //seventhPage();
   }
   if(tracker>355){
     page8.display();
     //eighthPage();
   }
   
   }
   
   if(tracker>385){
     background(0);
     
     page9.display();
       
      // page10.display();
         room1(500,350);
         if(tracker>400){
           
           page10.display();
           
           
           if(tracker>417){
             background(0);
             page11.display();
             room3(500,350);
           }
         
     }

   if(tracker>430){
     background(0);
     page12.display();
     singing(500,350);
     //twelthPage();
   }
   if(tracker>445){
      background(0);
      page13.display();
     sleeping(500,350);
     
     //thirteenthPage();
   }
   if(tracker>460){
      background(0);
     weeping(500,350);
       if(tracker>469){
         background(0);
         not(500,350);
       }
     page14.display();
     //fourteenthPage();
   } 
      if(tracker>470){
        background(0);
          end(500,350);
          last.display();
          last.update();
           
     //fourteenthPage();
   } 
   if(tracker>550){
     background(0);
   }
   }

}
//}

//created image methods

void shouting(int xHap,int yHap){
       shoutPic.loadPixels();
       shout.loadPixels();
   for(int y=0;y<shoutPic.height; y++){
     for(int x=0;x<shoutPic.width;x++){

          int loc = x+y*shoutPic.width;
       
          float r = red(shoutPic.pixels[loc]);
          float g = green(shoutPic.pixels[loc]);
          float b = blue(shoutPic.pixels[loc]);
       
       if(b>100 || r>50){
        shout.pixels[loc] = color(r,g,b);
       }
     }
   }  
   
    shout.updatePixels();
   image(shout,xHap,yHap,1000,700);
  
}

void end(int xHap,int yHap){
       questPic.loadPixels();
       quest.loadPixels();
   for(int y=0;y<questPic.height; y++){
     for(int x=0;x<questPic.width;x++){

          int loc = x+y*questPic.width;
       
          float r = red(questPic.pixels[loc]);
          float g = green(questPic.pixels[loc]);
          float b = blue(questPic.pixels[loc]);
       
       if(b>100 || r>50){
         quest.pixels[loc] = color(r,g,b);
       }
     }
   }  
   
   quest.updatePixels();
   image(quest,xHap,yHap,700,700);
  
}

void not(int xHap,int yHap){
       nopePic.loadPixels();
       nope.loadPixels();
   for(int y=0;y<nopePic.height; y++){
     for(int x=0;x<nopePic.width;x++){

          int loc = x+y*nopePic.width;
       
          float r = red(nopePic.pixels[loc]);
          float g = green(nopePic.pixels[loc]);
          float b = blue(nopePic.pixels[loc]);
       
       if(b>100 || r>50){
         nope.pixels[loc] = color(r,g,b);
       }
     }
   }  
   
   nope.updatePixels();
   image(nope,xHap,yHap,700,700);
  
}

void weeping(int xHap,int yHap){
       weepPic.loadPixels();
       weep.loadPixels();
   for(int y=0;y<weepPic.height; y++){
     for(int x=0;x<weepPic.width;x++){

          int loc = x+y*weepPic.width;
       
          float r = red(weepPic.pixels[loc]);
          float g = green(weepPic.pixels[loc]);
          float b = blue(weepPic.pixels[loc]);
       
       if(b>100 || r>50){
         weep.pixels[loc] = color(r,g,b);
       }
     }
   }  
   
    weep.updatePixels();
   image(weep,xHap,yHap,700,700);
  
}

void sleeping(int xHap,int yHap){
       sleepPic.loadPixels();
       sleep.loadPixels();
   for(int y=0;y<sleepPic.height; y++){
     for(int x=0;x<sleepPic.width;x++){

          int loc = x+y*sleepPic.width;
       
          float r = red(sleepPic.pixels[loc]);
          float g = green(sleepPic.pixels[loc]);
          float b = blue(sleepPic.pixels[loc]);
       
       if(b>100 || r>50){
         sleep.pixels[loc] = color(r,g,b);
       }
     }
   }  
   
    sleep.updatePixels();
   image(sleep,xHap,yHap,700,700);
  
}

void singing(int xHap,int yHap){
       singPic.loadPixels();
       sing.loadPixels();
   for(int y=0;y<singPic.height; y++){
     for(int x=0;x<singPic.width;x++){

          int loc = x+y*singPic.width;
       
          float r = red(singPic.pixels[loc]);
          float g = green(singPic.pixels[loc]);
          float b = blue(singPic.pixels[loc]);
       
       if(b>100 || r>50){
         sing.pixels[loc] = color(r,g,b);
       }
     }
   }  
   
    sing.updatePixels();
   image(sing,xHap,yHap,1000,700);
  
}

void room3(int xHap,int yHap){
       putPic.loadPixels();
       put.loadPixels();
   for(int y=0;y<putPic.height; y++){
     for(int x=0;x<putPic.width;x++){

          int loc = x+y*putPic.width;
       
          float r = red(putPic.pixels[loc]);
          float g = green(putPic.pixels[loc]);
          float b = blue(putPic.pixels[loc]);
       
       if(b>100 || r>50){
         put.pixels[loc] = color(r,g,b);
       }
     }
   }  
   
    put.updatePixels();
   image(put,xHap,yHap,1000,700);
  
}


void room2(int xHap,int yHap){
       happyPic.loadPixels();
       happy.loadPixels();
   for(int y=0;y<happyPic.height; y++){
     for(int x=0;x<happyPic.width;x++){

          int loc = x+y*happyPic.width;
       
          float r = red(happyPic.pixels[loc]);
          float g = green(happyPic.pixels[loc]);
          float b = blue(happyPic.pixels[loc]);
       
       if(b>100 || r>50){
         happy.pixels[loc] = color(r,g,b);
       }
     }
   }  
   
    happy.updatePixels();
   image(happy,xHap,yHap,1000,700);
  
}

void room1(int xHap,int yHap){
       angryPic.loadPixels();
       angry.loadPixels();
   for(int y=0;y<angryPic.height; y++){
     for(int x=0;x<angryPic.width;x++){

          int loc = x+y*angryPic.width;
       
          float r = red(angryPic.pixels[loc]);
          float g = green(angryPic.pixels[loc]);
          float b = blue(angryPic.pixels[loc]);
       
       if(b>100 || r>50){
          angry.pixels[loc] = color(r,g,b);
       }
     }
   }  
   
    angry.updatePixels();
   image(angry,xHap,yHap,1000,700);
  
}

void bar(int xHap,int yHap){
       barPic.loadPixels();
       bar.loadPixels();
   for(int y=0;y<barPic.height; y++){
     for(int x=0;x<barPic.width;x++){

          int loc = x+y*barPic.width;
       
          float r = red(barPic.pixels[loc]);
          float g = green(barPic.pixels[loc]);
          float b = blue(barPic.pixels[loc]);
       
       if(b>100 || r>50){
          bar.pixels[loc] = color(r,g,b);
       }
     }
   }  
   
    bar.updatePixels();
   image(bar,xHap,yHap,1000,700);
  
}

void coated(int xHap,int yHap){
       coatPic.loadPixels();
       coat.loadPixels();

   for(int y=0;y<coatPic.height; y++){
     for(int x=0;x<coatPic.width;x++){

          int loc = x+y*coatPic.width;
       
          float r = red(coatPic.pixels[loc]);
          float g = green(coatPic.pixels[loc]);
          float b = blue(coatPic.pixels[loc]);
       
       if(b>100 || r>50){
          coat.pixels[loc] = color(r,g,b);
       }
     }
   }  
   
    coat.updatePixels();
   image(coat,xHap,yHap);

}

void firstMan(int xHap,int yHap){
       manPic.loadPixels();
       man.loadPixels();
   for(int y=0;y<manPic.height; y++){
     for(int x=0;x<manPic.width;x++){

          int loc = x+y*manPic.width;
       
          float r = red(manPic.pixels[loc]);
          float g = green(manPic.pixels[loc]);
          float b = blue(manPic.pixels[loc]);
       
       if(color(r,g,b)> color(150)){
          man.pixels[loc] = color(r,g,b);
       }
     }
   }  
   
    man.updatePixels();
   image(man,xHap,yHap);
  
}

void hand(int xPos, int yPos){
         hand.loadPixels();
       moveHand.loadPixels();
   for(int y=0;y<moveHand.height; y++){
     for(int x=0;x<moveHand.width;x++){

          int loc = x+y*hand.width;
       
          float r = red(hand.pixels[loc]);
          float g = green(hand.pixels[loc]);
          float b = blue(hand.pixels[loc]);
       
       if(color(r,g,b)>=color(200)){
        moveHand.pixels[loc] = color(r,g,b);
       }
     }
   }  
   
    moveHand.updatePixels();
   image(moveHand,xPos,yPos,600,900);
}

void bird(float xHap, float yHap){
     
     moveBird.loadPixels();
       bird.loadPixels();
   for(int y=0;y<bird.height; y++){
     for(int x=0;x<bird.width;x++){

          int loc = x+y*bird.width;
       
          float r = red(bird.pixels[loc]);
          float g = green(bird.pixels[loc]);
          float b = blue(bird.pixels[loc]);
       
       if(b > 200 || r >50){
      moveBird.pixels[loc] = color(r,g,b);
       }
     }
   }  
   
    moveBird.updatePixels();
   image(moveBird,xHap,yHap,600,500);
}

void cage(int xpos, int ypos){
       opencage.loadPixels();
       cage.loadPixels();
   for(int y=0;y<opencage.width; y++){
     for(int x=0;x<opencage.width;x++){

          int loc = x+y*cage.width;
       
          float r = red(opencage.pixels[loc]);
          float g = green(opencage.pixels[loc]);
          float b = blue(opencage.pixels[loc]);
       
       if(color(r,g,b)>=color(200)){
        cage.pixels[loc] = color(r,g,b);
       }
     }
   }  
   
    cage.updatePixels();
   image(cage,xpos,ypos,600,700);
}
