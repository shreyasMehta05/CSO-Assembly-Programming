#include<stdio.h>
#include<stdlib.h>
// long long maxSum(long long arr[],long long n,long long b){
//     long long sum=0;
//     for(long long i=0;i<b;i++){
//         sum+=arr[i];
//     }
//     long long maxi=sum;
//     for(long long i=0;i<b;i++){
//         sum+=arr[n-i-1]-arr[b-i-1];
//         maxi=(maxi>sum)?maxi:sum;
//     }
//     return maxi;
// }
long long maxSum(long long arr[],long long n,long long b);
int main(){
    long long n,b;
    scanf("%lld",&n);
    scanf("%lld",&b);
    long long arr[n];
    for(long long i=0;i<n;i++){
        scanf("%lld",&arr[i]);
    }
    printf("%lld\n",maxSum(arr,n,b));
    return 0;
}