#include<stdio.h>
#include<stdlib.h>
// long long gcd(long long m,long long n){
//     if(m==0) return m;
//     if(n==0) return n;
//     if(m>n){
//         return gcd(m%n,n);
//     }
//     else{
//         return gcd(m,n%m);
//     }
// }
long long gcd(long long m,long long n);
int main(){
    long long n;
    scanf("%lld",&n);
    long long m;
    scanf("%lld",&m);
    printf("%lld\n",gcd(m,n));
    return 0;
}