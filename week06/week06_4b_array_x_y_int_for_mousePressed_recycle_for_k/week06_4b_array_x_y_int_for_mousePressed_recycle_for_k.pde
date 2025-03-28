// week06_4b_array_x_y_int_for_mousePressed_recycle_for_k
// 從 week04_5 延伸過來 利用 for迴圈 + 陣列, 畫出很多飼料不會動
void setup(){
  size(600, 400);
}
float [] x = new float[100];  // 有100個x和100個y
float [] y = new float[100];  // Java的陣列宣告
int N = 0; // 飼料有N個
void draw(){
  background( #C0FFEE ); // 咖啡青色 是 0 不是 o
  for(int i = 0; i<N; i++){
    ellipse(x[i], y[i], 8, 8);
    y[i] += 2;
    if(y[i]>400){ // 飼料掉到外面/看不到
      for(int k=i; k<N-1; k++){ // 要回收
        x[k] = x[k+1]; //右邊搬到左邊
        x[k] = y[k+1];
      }
      N--; // 回收完1顆飼料
    }
    println(N); // 把 N 在小黑印出來
  }
}
void mousePressed(){
  x[N] = mouseX;
  y[N] = mouseY;
  N++; // 增加1顆飼料
}
