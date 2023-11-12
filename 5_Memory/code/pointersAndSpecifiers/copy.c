#include <stdio.h>

// This code illustrates that in C, arrays are essentially pointers to the first character/item in the sequence.
int main(void) {
    char s[] = "Hello!";    // Define an array 's' and initialize it with the string "Hello!"
    char *t = s;            // Declare a pointer 't' and set it to point to the 's' array.

    printf("%p %p, %s %s\n", s, t, s, t);  
    
    // The Output:
    //     0x7ffd73dd9361 0x7ffd73dd9361, Hello! Hello!
}
