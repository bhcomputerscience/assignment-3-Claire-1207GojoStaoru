PImage bgIM, riceIM, fishIM, xiaIM, danIM, yuziIM, jiangIM;
boolean draggingRice = false;

int ricex = 450, ricey = 250;
int fishx = 30, fishy = 300;
int xiax = 0, xiay = 300;
int danx = 100, dany = 320;
int yuzix = 70, yuziy = 240;
int jiangx = 600, jiangy = 110;

final int fishx_shift = 50,fishy_shift =-25;
final int xiax_shift = 10, xiay_shift =-20;
final int yuzix_shift = -25;
final int jiangx_shift = 80,jiangy_shift =-90;

void setup() {
  size(750, 500);
  bgIM = loadImage("background.png");
  riceIM = loadImage("fanfan.png");
  fishIM = loadImage("fish.png");
  xiaIM = loadImage("xia.png");
  danIM = loadImage("dan.png");
  yuziIM = loadImage("yuzi.png");
  jiangIM = loadImage("jiang.png");
}

void draw() {
  image(bgIM, 0, 0, width, height);
  
  image(riceIM, ricex, ricey, width/2, height/2);
  image(fishIM, fishx, fishy, width/3, height/2);
  image(xiaIM, xiax, xiay, width*0.5, height/1.7);
  image(danIM, danx, dany, width*0.5, height/2);
  image(yuziIM, yuzix, yuziy, width*0.6, height/2);
  image(jiangIM, jiangx, jiangy, width/2, height);
}
void mouseDragged() 
{
  if (draggingRice) 
  {
    ricex = mouseX - width/4; 
    ricey = mouseY - height/4;
  }
}


void mouseReleased() 
{
  draggingRice = false;
}

void mousePressed() 
{
  
  if (mouseX >= ricex && mouseX <= ricex + width/2 && mouseY >= ricey && mouseY <= ricey + height/2) 
  {
    draggingRice = true;
  }
  else if (mouseX >= jiangx && mouseX <= jiangx + width/2 &&mouseY >= jiangy && mouseY <= jiangy + height) 
  {
    jiangx = ricex+jiangx_shift;
    jiangy = ricey+jiangy_shift;
  }
}

void keyPressed()
{
  if(key == '1')
  {
    fishx = ricex+fishx_shift;
    fishy = ricey-fishy_shift;
  }
  else if(key == '2')
  {
    xiax = ricex+xiax_shift;
    xiay= ricey+xiay_shift;
  }
  else if(key =='3')
  {
    yuzix = ricex+yuzix_shift;
    yuziy = ricey;
  }
  else if(key =='4')
  {
    danx = ricex;
    dany = ricey;
  }
}
