#include <stdio.h>

void reverse(int *arr, int n);
void print_arr(int *arr, int n);

int main(void) {
    int arr[] = {1,2,3,4,5};
    int n = sizeof(arr)/sizeof(int);
    reverse(arr, n);
    print_arr(arr, n);
}

void reverse(int *arr, int n) {
    int *start = arr;
    int *end = start + (n-1);

    for (int i = 0; i < (n/2); i++) {
        int temp = *start;
        *start = *end;
        *end = temp;
        start++;
        end--;
    }
}

void print_arr(int *arr, int n) {
    // in C the array pointers auto-increments
    for (int *i = arr; i < arr+n; i++) {
        printf("%d\n", *i);
    }
}
