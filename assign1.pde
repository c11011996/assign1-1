int x;
int healthPoint;
int treasureLocationX, treasureLocationY;
int enemyLocationX, enemyLocationY;
PImage bg1, bg2, enemy, fighter, hp, treasure;

void setup () {
  size(640,480) ;
  bg1 = loadImage("img/bg1.png");
  bg2 = loadImage("img/bg2.png");
  enemy = loadImage("img/enemy.png");
  fighter = loadImage("img/fighter.png");
  hp = loadImage("img/hp.png");
  treasure = loadImage("img/treasure.png");
  
  x = 0;
  healthPoint = 0;
  treasureLocationX = 0;
  treasureLocationY = 0;
  enemyLocationX = 0;
  enemyLocationY = 0;
  
  healthPoint = floor(random(100));
  
  treasureLocationX = floor(random(640));
  treasureLocationY = floor(random(480));

  enemyLocationY = floor(random(480));
}

void draw() {  
  image(bg1,x,0);
  x++;
  image(bg2,x-640,0);
  image(bg1,x-1280,0);
  x%=1280;
 
  fill(255,0,0);
  rect(18,10,healthPoint,9);
  image(hp,5,1);

  image(treasure,treasureLocationX,treasureLocationY);

  image(fighter,620,240);
  
  image(enemy,enemyLocationX,enemyLocationY);
  enemyLocationX += 3;
  enemyLocationX %= 640;
  
}
