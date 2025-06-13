// week17_1_zongzi_part2
PImage zongzi;
void setup(){
  size(500, 500);
  zongzi = loadImage("zongzi.png");  // 剛剛有把圖檔拉進程式裡
}
float x, y;  // 只有一顆粽子的座標
void draw(){
  background(204); // 204灰色
  imageMode(CENTER);  //   畫圖時, 圖片的座標, 把他設在中心點的座標
  if(x>0){  // 有按下 mouse 會設定 x, y 就不會是0, 才畫出來
    image(zongzi, x, y, 100, 100);  // 把粽子,畫在 x, y的座標
    y++;  // 座標往下, 代表粽子往下
  }
}
void mousePressed(){  // 使用 week04 的餵飼料的方法,讓粽子往下掉
  x = mouseX;
  y = mouseY;
}
