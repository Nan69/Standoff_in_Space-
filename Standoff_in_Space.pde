int Ecount;
int level;
float playerX;
float playerY;
PImage space;
PImage player;
float pbx;
float pby;
float basicEY;
float basicEX;
PImage basicE;
float bebx;
float beby;
float bebx2;
float beby2;
float bebx3;
float beby3;
float basicEY2;
float basicEY3;
int bullet;
int BEbullet;
int lives;
int hittimer;
float basicEX2;
float basicEX3;
void setup() {
  size (1000, 600);

  space = loadImage("Space.jpg");
  player = loadImage("Goodship.png");
  basicE = loadImage("bad1.png");
  imageMode(CENTER);
  rectMode(CENTER);
  playerX = 500;
  playerY = 500;
  pbx = playerX;
  pby = playerY;
  bebx =basicEX;
  beby = 100;
  beby2 = 100;
  beby3 = 100;
  basicEX = random(1000);
  basicEX2 = random(1000);
  basicEX3 = random(1000);
  basicEY =100;
  Ecount = 0;
  level= 0;
  lives = 3;
  hittimer = 30;
}

void draw() {
  image(space, 500, 300, 1000, 1000);
//  user();
  //shoot();
 // basicE();  
 // basicE2();
 // basicE3();
  //basicE();
 textSize(20);
  text(lives, 50, 50);
 text("Lives",35,30);
 
   
   if(level == 0){
     background(#333F46);
     fill(#030303);
   rect (500,100,800,100);
     textSize(50);
     fill(#E105FA);
     
     text("Welcome to Standoff in space!",145,115);
     text("instructions:",150,200);
     text("Press R to shoot",150,250);
     text("Press w,a,s,d to move your character",50,300);
     text("Press ENTER to join the fight", 150,500);
     
     
     if(key == ENTER){
       level = 1;
       
       
       
     }
     
     
   }
   
   
  if (level == 1) {
  user();
  shoot();
  basicE();

  if(Ecount == 1){
    level = 2;
    
    
    
    
  }
  
  }





}



void user() {



  image(player, playerX, playerY, 40, 40);


  if (key == 'w') {
    playerY = playerY-10;
  }



  if (key == 's') {
    playerY +=10;
  }
  if (key == 'd') {
    playerX +=10;
  }
  if (key == 'a') {
    playerX = playerX - 10;
  }

  //   else{
  //  playerX = playerX +=0;
  //A playerY +=0;

  //  }
  if (playerX == 1040) {
    playerX =980;
  }
  if (playerX == -40) {
    playerX =20;
  }
}




void shoot() {

  if (key == 'r') {
    bullet = 1;
    pbx = playerX;
  }

  if (bullet == 1) {
    ellipse(pbx, pby, 10, 10);
    pby=pby-30;
    
  }
  if (pby <= 0) {
    bullet = 0;
    pby = playerY;
  }


  if (abs(pbx-basicEX)<40 && abs(pby-basicEY)<40) {
    basicEX = -200;
    Ecount = Ecount -1;
  }

  if (abs(pbx-basicEX2)<40 && abs(pby-basicEY)<40) {
    basicEX2 = -200;
    Ecount = Ecount - 1;
  }
  if (abs(pbx-basicEX3)<40 && abs(pby-basicEY)<40) {
    basicEX3 = -200;
    Ecount = Ecount -1;
  }
}



void basicE() {
  image(basicE, basicEX, basicEY, 40, 40);

  if (random(10) > 5) {
    basicEX +=5;
  } else {
    basicEX -=5;
  }




  BEbullet = 1;








  if (BEbullet == 1) {

    ellipse(bebx, beby, 10, 10);

    beby+=15;
    bebx =basicEX;
  }

  if (beby >= 1000) {
    BEbullet = 0;
    beby = basicEY;
    bebx = basicEX;
  }





  if (hittimer >=30) {
    if (abs(bebx-playerX)<40 && abs(beby-playerY)<40) {
      lives = lives - 1;
      hittimer =0;
    }
  }
  if (hittimer>=0) {
    hittimer +=1;
  }
}
void basicE2() {
  image(basicE, basicEX2, basicEY, 40, 40);

  if (random(10) > 5) {
    basicEX2 +=5;
  } else {
    basicEX2 -=5;
  }




  BEbullet = 1;








  if (BEbullet == 1) {

    ellipse(bebx2, beby2, 10, 10);

    beby2+=15;
    bebx2 =basicEX;
  }

  if (beby2 >= 1000) {
    BEbullet = 0;
    beby2 = basicEY;
    bebx2 = basicEX2;
  }





  if (hittimer >=30) {
    if (abs(bebx2-playerX)<40 && abs(beby2-playerY)<40) {
      lives = lives - 1;
      hittimer =0;
    }
  }
  if (hittimer>=0) {
    hittimer +=1;
  }
}



void basicE3() {
  image(basicE, basicEX3, basicEY, 40, 40);

  if (random(10) > 5) {
    basicEX3 +=5;
  } else {
    basicEX3 -=5;
  }




  BEbullet = 1;








  if (BEbullet == 1) {

    ellipse(bebx3, beby3, 10, 10);

    beby3+=15;
    bebx3 =basicEX;
  }

  if (beby >= 1000) {
    BEbullet = 0;
    beby3 = basicEY;
    bebx3 = basicEX3;
  }





  if (hittimer >=30) {
    if (abs(bebx3-playerX)<40 && abs(beby3-playerY)<40) {
      lives = lives - 1;
      hittimer =0;
    }
  }
  if (hittimer>=0) {
    hittimer +=1;
  }
}
