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
//     long long i=0,j=0;
//     ans[0]=sum;
//     while(i!=n/2){
//         if(i<n/2){
//             if(arr[i]==0){
//                 ans[j]=sum+n-i-1-i;
//                 sum=ans[j];
//                 j++;
//             }
//             i=n-i-1;
//         }
//         else {
//             if(arr[i]==1){
//                 ans[j]=i-(n-i-1)+sum;
//                 sum=ans[j];
//                 j++;
//             }
//             i=(n-i-1)+1;
//         }
//     }
//     if(n%2==0){
//         if(arr[n/2]==1){
//             ans[j]=sum+1;
//             sum=ans[j];
//             j++;
//         }
//     }
//     if(j==0) j++;
//     while(j<n){
        
//         ans[j]=ans[j-1];
//         j++;
//     }
//     return;
// }
int main(){
    long long n;
    scanf("%lld",&n);
    long long arr[n];
    for(long long i=0;i<n;i++)
        scanf("%lld", &arr[i]);
    long long ans[n];
    topi(arr,n,ans);
    for(long long i=0;i<n;i++){
        printf("%lld ",ans[i]);
    }
    printf("\n");
    return 0;
}