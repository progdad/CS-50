#include <stdio.h>

// This code demonstrates how to swap the values of two integers using pointers.
void swap(int *a, int *b);

int main(void) {
    int x = 1;
    int y = 2;

    printf("x is %i, y is %i\n", x, y);
    swap(&x, &y);  // Call the swap function and pass the addresses of 'x' and 'y'.
    printf("x is %i, y is %i\n", x, y);  // Print the updated values of 'x' and 'y'.
}

// The swap function takes two pointers as arguments and swaps the values they point to.
void swap(int *a, int *b) {
    int tmp = *a;
    *a = *b;
    *b = tmp;
}

// The Output:
// x is 1, y is 2
// x is 2, y is 1


// The code below doesn't work as expected due to the mechanism of "pass by value" in C. When you pass variables to a function in C, you're passing copies of their values, not references to the original variables. 
/*
void swap(int a, int b);

int main(void) {
    int x = 1;
    int y = 2;

    printf("x is %i, y is %i\n", x, y);
    swap(x, y);
    printf("x is %i, y is %i\n", x, y);
}

void swap(int a, int b) {
    int tmp = a;
    a = b;
    b = tmp;
}
    
// The Output:
// x is 1, y is 2
// x is 1, y is 2
*/
