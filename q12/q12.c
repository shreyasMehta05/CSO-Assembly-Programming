#include<stdio.h>
long long int check(long long fact[],long long n);
// long long int check(long long fact[],long long n){
//     long long m=n;
//     fact[0]=1;
//     for(long long i=1;i<10;i++){
//         fact[i]=fact[i-1]*i;
//     }
//     long long sum=0;
//     if(n==0) return 0;
//     while(n>0){
//         sum+=fact[(n%10)];
//         n=n/10;
//     }
//     // printf("%lld",sum);
//     if(sum==m) return 1;
//     else return 0;
// }
int main(){
    long long n;
    scanf("%lld",&n);
    long long dp[10];
    if(check(dp,n)){
        printf("TRUE\n");
    }
    else{
        printf("FALSE\n");
    }
    return 0;
}