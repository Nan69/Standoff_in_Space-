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
int bullet;
int BEbullet;
int lives;
int hittimer;
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
  basicEX = random(1000);
  
  basicEY =100;
  Ecount = 0;
  level= 0;
  lives = 3;
hittimer = 30;
}
  
  void draw() {
  image(space, 500, 300, 1000, 1000);
   user();
 shoot();
  basicE();  
  basicE2();
   basicE3();
    //basicE();
  text(lives,50,50);
    if(Ecount == 0){
      level =+1;
      
      
    }
    if(level == 1){
      
      
      
      
      
      
    }
  
  
  
  
  }
  
  
  
  void user(){
    
    
  
    image(player,playerX,playerY,40,40);
     
      
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
    if(playerX == 1040){
      playerX =980;
      
      
      
      
      
    }
    if(playerX == -40){
      playerX =20;
      
      
      
      
    }
    
    
    
  }
  
  
  
  
  void shoot(){
    
    if(key == 'r'){
    bullet = 1;
    }
      
      if (bullet == 1){
      ellipse(pbx,pby,10,10);
    pby=pby-30;
    pbx = playerX;
    
    
      }
    if(pby <= 0){
      bullet = 0;
      pby = playerY;
      
      
      
      
    }
    
      
       if (abs(pbx-basicEX)<40 && abs(pby-basicEY)<40) {
    basicEX = -50;
  }
      
    
       
      
  
      
    
  }
  
  
  
  void basicE(){
    image(basicE,basicEX,basicEY,40,40);
    
    if(random(10) > 5){
      basicEX +=5;
      
      
      
      
      
      
      
      
      
    }
    else{
      basicEX -=5;
      
      
      
    }
    
    
  
      
      BEbullet = 1;
      
      
      
      
      
      
    
  
if(BEbullet == 1){
  
  ellipse(bebx,beby,10,10);
   
    beby+=15;
    bebx =basicEX;
  
  
  
  
  
  
  
  
}

if(beby >= 1000){
      BEbullet = 0;
      beby = basicEY;
bebx = basicEX;



}





if(hittimer >=30){
       if (abs(bebx-playerX)<40 && abs(beby-playerY)<40) {
    lives = lives - 1;
    hittimer =0;
  }


}
if(hittimer>=0){
hittimer +=1;




}
  }
    void basicE2(){
    image(basicE,basicEX,basicEY,40,40);
    
    if(random(10) > 5){
      basicEX +=5;
      
      
      
      
      
      
      
      
      
    }
    else{
      basicEX -=5;
      
      
      
    }
    
    
  
      
      BEbullet = 1;
      
      
      
      
      
      
    
  
if(BEbullet == 1){
  
  ellipse(bebx,beby,10,10);
   
    beby+=15;
    bebx =basicEX;
  
  
  
  
  
  
  
  
}

if(beby >= 1000){
      BEbullet = 0;
      beby = basicEY;
bebx = basicEX;



}





if(hittimer >=30){
       if (abs(bebx-playerX)<40 && abs(beby-playerY)<40) {
    lives = lives - 1;
    hittimer =0;
  }


}
if(hittimer>=0){
hittimer +=1;




}
  }
  
  
  
    void basicE3(){
    image(basicE,basicEX,basicEY,40,40);
    
    if(random(10) > 5){
      basicEX +=5;
      
      
      
      
      
      
      
      
      
    }
    else{
      basicEX -=5;
      
      
      
    }
    
    
  
      
      BEbullet = 1;
      
      
      
      
      
      
    
  
if(BEbullet == 1){
  
  ellipse(bebx,beby,10,10);
   
    beby+=15;
    bebx =basicEX;
  
  
  
  
  
  
  
  
}

if(beby >= 1000){
      BEbullet = 0;
      beby = basicEY;
bebx = basicEX;



}





if(hittimer >=30){
       if (abs(bebx-playerX)<40 && abs(beby-playerY)<40) {
    lives = lives - 1;
    hittimer =0;
  }


}
if(hittimer>=0){
hittimer +=1;




}
  }