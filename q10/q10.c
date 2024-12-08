#include<stdio.h>
#include<stdlib.h>
void sort(long long arr[],long long n);
// void sort(long long arr[],long long n){
//     int even=0;
//     int odd=0;
//     for(long long i=0;i<n;i++){
//         if(arr[i]%2==0) even++;
//         else odd++;
//     }
//     if(even && odd){
//         for(long long i=0;i<n;i++){
//             for(long long j=i;j<n;j++){
//                 if(arr[i]>arr[j]){
//                     long long x=arr[i];
//                     arr[i]=arr[j];
//                     arr[j]=x;
//                 }
//             }
//         }
//     }
//     return;
// }
int main(){
    long long n;
    scanf("%lld",&n);
    long long arr[n];
    for(int i=0;i<n;i++){
        scanf("%lld",&arr[i]);
    }
    sort(arr,n);
    for(long long i=0;i<n;i++)
        printf("%lld ",arr[i]);
    printf("\n");
    return 0;
}