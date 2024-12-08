#include<stdio.h>
#include<stdlib.h>
long long calculator(long long m,long long n,long long s);
int main(){
    long long n,m,s;
    scanf("%lld %lld %lld",&m,&n,&s);
    long long x=calculator(m,n,s);
    printf("%lld\n",x);
    return 0;
}