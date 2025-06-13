// week17_1_zongzi_part1
PImage zongzi;
void setup(){
  size(500, 500);
  zongzi = loadImage("zongzi.png");
}
void draw(){
  background(204); // 204灰色
  imageMode(CENTER);
  //image(zongzi, 0, 0, 100, 100);  // 好大的粽子 1024x1024 要畫小一點
  image(zongzi, mouseX, mouseY, 100, 100); 
}
