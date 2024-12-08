#include<stdio.h>
#include<stdlib.h>
long long fun(long long n);
int main(){
    long long n;
    scanf("%lld",&n);
    if(fun(n)){
        printf("True\n");
    }
    else{
        printf("False\n");
    }
    return 0;
}