#include <stdio.h>
#include <string.h>
#include <ctype.h>


int main(void) {
    char s[] = "someThing";

    for (int i = 0, n = strlen(s); i < n; i++) 
    {
        if (s[i] >= 'a' && s[i] <= 'z') 
        {
            // printf("%c", s[i] - 32);
            // Or a better approach:
            printf("%c", toupper(s[i]));
        }
        else 
        {
            printf("%c", s[i]);
        }
    }
    printf("\n");

    /*
    The Output:
        SOMETHING
    */
}
