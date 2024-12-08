#include<stdio.h>
#include<stdlib.h>
#include<string.h>

# define N 100
long long palindrome(long long n);
// long long palindrome(long long n){
//     long long m=n;
//     long x=0;
//     while(n!=0){
//         x+=n%10;
//         x=x*10;
//         n=n/10;
//     }
//     return m==n;
// }
int main(){
    long long n;
    scanf("%lld",&n);
    if(palindrome(n)){
        printf("True\n");
    }
    else{
        printf("False\n");
    }
    return 0;
}