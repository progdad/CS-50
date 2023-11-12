#include <stdio.h>

int main() {
    char str1[] = "Hello,";
    char str2[] = " World!";
    
    // Declare pointers to strings.
    char *ptr1 = str1;
    char *ptr2 = str2;

    printf("String 1: %s\n", ptr1);  // Print the first string using the pointer.
    printf("String 2: %s\n", ptr2);  // Print the second string using the pointer.

    // Concatenate the two strings using pointers.
    while (*ptr1) {
        ptr1++;  // Move the pointer to the end of the first string.
    }
    
    printf("%p %p, %c %c\n", ptr1, ptr2, *ptr1, *ptr2); // The last character of str1 is adjacent to the first character of str2, check the output.

    while (*ptr2) {
        *ptr1 = *ptr2;  // Copy characters from the second string to the first.
        ptr1++;
        ptr2++;
    }
    *ptr1 = '\0';  // Add a null terminator to create a single string.

    printf("%c\n", *(ptr1 - 1));
    printf("%c\n", *(ptr2 - 2));
    printf("String 1 after: %s\n", str1);  // Print the concatenated string.
    printf("String 2 after: %s\n", str2);

    /*
    
    The Output:
        String 1: Hello,
        String 2:  World!
        0x7ffeca663f0f 0x7ffeca663f10,   
        !
        !
        String 1 after: Hello, World!
        String 2 after: World!
    */

    return 0;
}
