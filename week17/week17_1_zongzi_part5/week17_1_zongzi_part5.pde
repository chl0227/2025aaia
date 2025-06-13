// week17_1_zongzi_part5
// 魚會去吃粽子
PImage zongzi, fish, fish2;
void setup(){
  size(500, 500);
  zongzi = loadImage("zongzi.png");
  fish = loadImage("fish.png");  
  fish2 = loadImage("fish2.png");
}
float fishX = 250, fishY = 250;
float [] x = new float[100];  // 可放100個粽子
float [] y = new float[100];  // 學 week6 的陣列
int N = 0;  // 一開始有 0 個粽子
void draw(){
  background(204); // 204灰色
  imageMode(CENTER);  //   畫圖時, 圖片的座標, 把他設在中心點的座標
  for(int i=0; i<N; i++){
    if(x[i]>0){  // 有按下 mouse 會設定 x, y 就不會是0, 才畫出來
      image(zongzi, x[i], y[i], 100, 100);  // 把粽子,畫在 x, y的座標
      y[i]++;  // 座標往下, 代表粽子往下
      if( y[i] > 500) {
        for(int k=i+1; k<N; k++){
          x[k-1] = x[k];
          y[k-1] = y[k];
        }
        N--;
      }
    }
  }
  //println(N);
  if(mouseX > fishX) image(fish, fishX, fishY, 152, 104);
  else image(fish2, fishX, fishY, 152,104);
}
void mousePressed(){  // 使用 week04 的餵飼料的方法,讓粽子往下掉
  x[N] = mouseX;
  y[N] = mouseY;
  N++;
}
