#include<stdio.h>
#include<stdlib.h>
// long long find(long long arr[],long long n){
//     long long flag=0;
//     for(long long i=1;i<=n;i++){
//         flag=0;
//         for(long long j=0;j<n;j++){
//             if(arr[j]==i){
//                 flag=1;
//                 break;
//             }
//         }
//         if(!flag){
//             return i;
//         }
//     }
// }
long long find(long long arr[],long long n);
int main(){
    long long n;
    scanf("%lld",&n);
    long long arr[n];
    for(long long i=0;i<n;i++){
        scanf("%lld",&arr[i]);
    }
    printf("%lld\n",find(arr,n));
    return 0;
}