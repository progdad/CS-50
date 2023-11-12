#include <stdio.h>

int main() {
    int num = 42;
    char string[] = "String";
    float pi = 3.14159265;
    int *ptr = &num;

    printf("Integer: %d\n", num);                   // Print the value of 'num' as an integer.
    printf("String: %s\n", string);                 // Print the string 'string'.
    printf("Str-Pointer: %p\n", string);            // Print the memory address of the 'string' array in hexadecimal format.
    printf("Float: %f\n", pi);                      // Print the value of 'pi' as a floating-point number.
    printf("Pointer Address: %p\n", ptr);           // Print the memory address of the 'ptr' pointer in hexadecimal format.
    printf("Integer in Hex: %x\n", num);            // Print the value of 'num' in hexadecimal format.

    /*
    
    The Output:
        Integer: 42
        String: String
        Str-Pointer: 0x7ffd87152f91
        Float: 3.141593
        Pointer Address: 0x7ffd87152f80
        Integer in Hex: 2a
    
    */

    return 0;
}