int Ecount;
int level;
float playerX;
float playerY;
PImage space;
PImage player;
int Cspeed;
int Chealth;
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

float chaserX;
float chaserY;
float chaserX2;
float chaserY2;
float chaserX3;
float chaserY3;
float chaserX4;
float chaserY4;
int Chealth2;
int Chealth3;
int Chealth4;

PImage chaser;
int bullet;
int BEbullet;
int lives;
int hittimer;
float basicEX2;
float basicEX3;
float leveltime;
void setup() {
  size (1000, 600);
  space = loadImage("Space.jpg");
  player = loadImage("Goodship.png");
  basicE = loadImage("bad1.png");
  chaser = loadImage("chaser.png");
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
  chaserX = random(1000);
  chaserY = 50;
  chaserX2 = random(1000);
  chaserY2 = 50;
  chaserX3 = random(1000);
  chaserY3 = 50;
  chaserX4 = random(1000);
  chaserY4 = 50;
  Ecount = 0;
  level= -1;
  lives = 3;
  hittimer = 30;
  leveltime = leveltime+1;
  Chealth = 1;
  Chealth2 = 1;
  Chealth3 = 1;
  Chealth4 = 1;
}

void draw() {
  image(space, 500, 300, 1000, 1000);

 textSize(20);
  text(lives, 50, 50);
 text("Lives",35,30);
 
   if(lives == 0){
  level = -1;
     
   }
   if(level == -1){
     //chaser();
     user();
     shoot();
    // chaser2();
    // chaser3();
   }
   if(level == 0){
     
     
     
     
     if(key == ENTER){
       level = 1;
       
       
       
     }
     
     
   }
   
   
  if (level == 1) {
  user();
  shoot();
  basicE();
  textSize(20);
  text("PRESS R TO SHOOT",450,50);
 
  if(Ecount == 1){
    level = 2;
    leveltime = 0;
    
    
    
  }
  
  }

if(level == 2){
 leveltime +=1;
 if(key == ENTER){
leveltime = 30;
 }
  if(leveltime >=30){
  
  user(); playerX = 500;
shoot();
basicE();
basicE2();
basicE3();
 

if(Ecount == 3){
  level = 3;
  
  
  
  
  
}



  }
else{
  textSize(20);
  text("LEVEL 2",450, 300);
  text("YOU CAN PRESS ENTER TO SKIP THE WAIT",300,100);
}


}

}

void user() {



  image(player, playerX, playerY, 40, 40);


  if (key == 'w') {
    playerY = playerY-15;
  }



  if (key == 's') {
    playerY +=15;
  }
  if (key == 'd') {
    playerX +=15;
  }
  if (key == 'a') {
    playerX = playerX - 15;
  }

  //   else{
  //  playerX = playerX +=0;
  //A playerY +=0;

  //  }
  if (playerX >= 1040) {
    playerX =980;
  }
  if (playerX <= -40) {
    playerX =20;
  }
if(playerY <=-40){
playerY = 20;



}
if(playerY >= 620){
  playerY =590;
  
  
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
    Ecount = Ecount +1;
  }

  if (abs(pbx-basicEX2)<40 && abs(pby-basicEY)<40) {
    basicEX2 = -200;
    Ecount = Ecount + 1;
  }
  if (abs(pbx-basicEX3)<40 && abs(pby-basicEY)<40) {
    basicEX3 = -200;
    Ecount = Ecount +1;
    
  }

if(abs(pbx-chaserX2)<40 && abs(pby-chaserY2)<40){
chaserX2 = -300;
chaserX2 +=0;
Ecount = Ecount + 1;
Chealth2 =0;
}

if(abs(pbx-chaserX3)<40 && abs(pby-chaserY3)<40){
chaserX3 = -300;
chaserX3 +=0;
Ecount = Ecount + 1;
Chealth3 =0;
}

if(abs(pbx-chaserX4)<40 && abs(pby-chaserY4)<40){
chaserX4 = -300;
chaserX4 +=0;
Ecount = Ecount + 1;
Chealth4 =0;
}


if(abs(pbx-chaserX)<40 && abs(pby-chaserY)<40){
chaserX = -300;
chaserX +=0;
Ecount = Ecount + 1;
Chealth =0;
}


if(abs(pbx-chaserX)<40 && abs(pby-chaserY)<40){
chaserX = -300;
chaserX +=0;
Ecount = Ecount + 1;
Chealth =0;
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

void chaser(){
  image(chaser,chaserX,chaserY,80,80);
  
  
  
  
  if(Chealth >=1){
  if(playerX > chaserX){
   if(random(20)>10){
    chaserX +=15;
    
   }
   else{
     chaserX -=2;
   }
    
  }
  
  if(playerX < chaserX){
    if(random(20)>10){
    chaserX -=15;
    }
    else{
      chaserX+=2;
      
    }
  }
  if(playerY>chaserY){
  if(random(20)>10){
    chaserY+=18;
  
  }
  else{
  chaserY-=2;
  } 
    
    
    
  }
  if(playerY < chaserY){
    if(random(20)>10){
    chaserY-=18;
    
    
    
    }
    else{
      chaserY+=2;
      
      
    }
    
  }
  
  
  
  
  
  
  if (hittimer >=30) {
    if (abs(chaserX-playerX)<40 && abs(chaserY-playerY)<40) {
      lives = lives - 1;
      hittimer =0;
    }
  }
  if (hittimer>=0) {
    hittimer +=1;
  }
  
  
  }
  
}


void chaser2(){
  image(chaser,chaserX2,chaserY2,80,80);
  
  
  
  
  if(Chealth2 >=1){
  if(playerX > chaserX2){
   if(random(20)>10){
    chaserX2 +=15;
    
   }
   else{
     chaserX2 -=2;
   }
    
  }
  
  if(playerX < chaserX2){
    if(random(20)>10){
    chaserX2 -=15;
    }
    else{
      chaserX2+=2;
      
    }
  }
  if(playerY>chaserY2){
  if(random(20)>10){
    chaserY2+=18;
  
  }
  else{
  chaserY2-=5;
  } 
    
    
    
  }
  if(playerY < chaserY2){
    if(random(20)>10){
    chaserY2-=18;
    
    
    
    }
    else{
      chaserY2+=5;
      
      
    }
    
  }
  
  
  
  
  
  
  if (hittimer >=30) {
    if (abs(chaserX2-playerX)<40 && abs(chaserY2-playerY)<40) {
      lives = lives - 1;
      hittimer =0;
    }
  }
  if (hittimer>=0) {
    hittimer +=1;
  }
  
  
  }
  
}


void chaser3(){
  image(chaser,chaserX3,chaserY3,80,80);
  
  
  
  
  if(Chealth3 >=1){
  if(playerX > chaserX3){
   if(random(20)>10){
    chaserX3 +=15;
    
   }
   else{
     chaserX3 -=2;
   }
    
  }
  
  if(playerX < chaserX3){
    if(random(20)>10){
    chaserX3 -=15;
    }
    else{
      chaserX3+=2;
      
    }
  }
  if(playerY>chaserY3){
  if(random(20)>10){
    chaserY3+=18;
  
  }
  else{
  chaserY3-=5;
  } 
    
    
    
  }
  if(playerY < chaserY3){
    if(random(20)>10){
    chaserY3-=18;
    
    
    
    }
    else{
      chaserY3+=5;
      
      
    }
    
  }
  
  
  
  
  
  
  if (hittimer >=30) {
    if (abs(chaserX3-playerX)<40 && abs(chaserY3-playerY)<40) {
      lives = lives - 1;
      hittimer =0;
    }
  }
  if (hittimer>=0) {
    hittimer +=1;
  }
  
  
  }
  
}




void chaser4(){
  image(chaser,chaserX4,chaserY4,80,80);
  
  
  
  
  if(Chealth4 >=1){
  if(playerX > chaserX4){
   if(random(20)>10){
    chaserX4 +=15;
    
   }
   else{
     chaserX4 -=2;
   }
    
  }
  
  if(playerX < chaserX4){
    if(random(20)>10){
    chaserX4 -=15;
    }
    else{
      chaserX4+=2;
      
    }
  }
  if(playerY>chaserY4){
  if(random(20)>10){
    chaserY4+=18;
  
  }
  else{
  chaserY4-=5;
  } 
    
    
    
  }
  if(playerY < chaserY4){
    if(random(20)>10){
    chaserY4-=18;
    
    
    
    }
    else{
      chaserY4+=5;
      
      
    }
    
  }
  
  
  
  
  
  
  if (hittimer >=30) {
    if (abs(chaserX4-playerX)<40 && abs(chaserY4-playerY)<40) {
      lives = lives - 1;
      hittimer =0;
    }
  }
  if (hittimer>=0) {
    hittimer +=1;
  }
  
  
  }
  
}