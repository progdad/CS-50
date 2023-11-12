#include <ctype.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>

int main(void) {
    // Initialize a character array 's' with the string "not many words"
    char s[] = "not many words";
    
    // Dynamically allocate memory for a new string 't' to store a copy of 's' with enough space for the null-terminator
    char *t = malloc(strlen(s) + 1);

    // Copy the content of 's' into 't' character by character
    for (int i = 0, n = strlen(s) + 1; i < n; i++) {
        t[i] = s[i];
    }

    // Check if the length of 't' is greater than 0 (not an empty string)
    if (strlen(t) > 0) {
        // Capitalize the first character of 't'
        t[0] = toupper(t[0]);
    }

    // Print the original string 's' and the modified string 't'
    printf("s: %s\n", s);
    printf("t: %s\n", t);

    // Free the dynamically allocated memory to prevent memory leaks
    free(t);

    /*
    The output:
    s: not many words
    t: Not many words
    */
}

