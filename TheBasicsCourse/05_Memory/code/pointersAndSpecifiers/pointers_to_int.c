#include <stdio.h>

int main() {
    int x = 42;
    int *p = &x;  // Declare a pointer to an integer and assign the address of x to it.

    printf("Value of x: %d\n", x);
    printf("Value of x via pointer: %d\n", *p);  // Dereference the pointer to get the value.
    printf("Address stored in the pointer: %p\n", p);  // Address stored in the pointer.

    // Modify the value via the pointer.
    *p = 100;
    printf("Modified value of x via pointer: %d\n", x);

    /*
    
    The Output:
        Value of x: 42
        Value of x via pointer: 42
        Address stored in the pointer: 0x7ffc97e7525c
        Modified value of x via pointer: 100
    
    */

    return 0;
}
