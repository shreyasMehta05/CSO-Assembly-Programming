#include<stdio.h>
#include<stdlib.h>
void function(long long arr[],long long n);
int main(){
    long long n;
    scanf("%lld",&n);
    long long arr[n];
    for(long long i=0;i<n;i++){
        scanf("%lld",&arr[i]);
    }
    function(arr,n);
    for(long long i=0;i<n;i++){
        printf("%lld ",arr[i]);
    }
    printf("\n");
    return 0;
}