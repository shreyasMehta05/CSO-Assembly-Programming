#include<stdio.h>
#include<stdlib.h>

void topi(long long arr[],long long n,long long ans[]);
// {
//     long long sum=0;
//     for(long long i=0;i<n;i++){
//         if(arr[i]==0){
//             sum+=i;
//         }
//         else{
//             sum+=n-i-1;
//         }
//     }
//     long long l=0,r=n-1,i=0;
//     while(l<r){
//         if(arr[l]==0){
//             ans[i]=sum+(n-l-1)-l;
//             sum=ans[i];
//             i++;
//         }
//         l++;
//         if(arr[r]==1){
//             ans[i]=sum+r-(n-r-1);
//             sum=ans[i];
//             i++;
//         }
//         r--;
//     }
//     while(i<n){
//         ans[i]=sum;
//         i++;
//     }
// }
int main(){
    long long n;
    scanf("%lld",&n);
    long long arr[n];
    for(long long i=0;i<n;i++){
        scanf("%lld",&arr[i]);
    }
    long long ans[n];
    topi(arr,n,ans);
    for(long long i=0;i<n;i++){
        printf("%lld ",ans[i]);
    }
    printf("\n");

    return 0;
}