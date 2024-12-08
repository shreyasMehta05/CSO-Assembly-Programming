#include<stdio.h>
#include<stdlib.h>
void swap(long long*a,long long*b){
    long long x=*a;
    *a=*b;
    *b=x;
}
void waveSort(long long arr[],long long n);
// void waveSort(long long arr[],long long n){
//     for(long long i=0;i<n;i++){
//         for(long long j=i;j<n;j++){
//             if(arr[i]>arr[j]){
//                 swap(&arr[i],&arr[j]);
//             }
//         }
//     }
//     for(long long i=0;i+1<n;i+=2){
//         swap(&arr[i],&arr[i+1]);
//     }
// }
int main(){
    long long n;
    scanf("%lld",&n);
    long long arr[n];
    for(long long i=0;i<n;i++){
        scanf("%lld",&arr[i]);
    }
    waveSort(arr,n);
    for(long long i=0;i<n;i++)
        printf("%lld ",arr[i]);
    printf("\n");
    return 0;
}