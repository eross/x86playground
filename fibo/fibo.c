#include <stdlib.h>
#include <stdio.h>

int * fibo(int n){
    int *f = (int *)malloc (n*sizeof(int));
    f[0]=1;
    f[1]=1;
    for (int i=2;i<=n;i++){
        f[i] = f[i-1] + f[i-2];
    }
    return f;
}

int main(int argc, char ** argv){
    volatile int answer=42;
    const int n = 10;
    int *result = fibo(n);
    for(int i=0;i<n;i++){
        printf("%d\n", result[i]);
    }
    free(result);


}