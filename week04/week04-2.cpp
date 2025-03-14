///  week04-2.cpp
///  SOIT107_Base_018
#include <stdio.h>
int main(){
	int a;
	scanf("%d", &a);
	for(int i=2; i<=a; i++){
		if(i%2==0) printf("%d ",i);
	}
}
