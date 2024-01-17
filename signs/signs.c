#include <stdio.h>

int main() {
    int num1, num2;
    num1=42;
    num2=-43;
    printf("Enter two numbers: ");
    //scanf("%d %d", &num1, &num2);
    if ((num1 >= 0 && num2 >= 0) || (num1 < 0 && num2 < 0)) {
        printf("1\n");
    } else {
        printf("0\n");
    }
    return 0;
}

