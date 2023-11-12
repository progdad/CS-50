#include <stdio.h>

int main() {
    char letter = 'A';
    char *ptr = &letter;  // Declare a pointer to a character and assign the address of letter to it.

    printf("Value of letter: %c\n", letter);
    printf("Address of letter: %p\n", &letter);  // Address of letter.
    printf("Value of letter via pointer: %c\n", *ptr);  // Dereferenced value.
    printf("Address stored in the pointer: %p\n", ptr);  // Address stored in the pointer.

    // Modify the value via the pointer.
    *ptr = 'B';
    printf("Modified value of letter via pointer: %c\n", letter);

    /* 
    
    The Output:

        Value of letter: A
        Address of letter: 0x7ffe3e8931bf
        Value of letter via pointer: A
        Address stored in the pointer: 0x7ffe3e8931bf
        Modified value of letter via pointer: B
    
    */

    return 0;
}
