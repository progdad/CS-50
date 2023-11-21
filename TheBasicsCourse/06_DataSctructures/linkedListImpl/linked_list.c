#include <stdio.h>
#include <stdlib.h>

// Define a structure for a linked list node
typedef struct node {
    int number;
    struct node *next;
} node;

int main(int argc, char *argv[]) {
    // Initialize an empty linked list
    node *list = NULL;

    // Iterate through command line arguments starting from index 1
    for (int i = 1; i < argc; i++){
        // Convert argument to an integer
        int number = atoi(argv[i]);

        // Allocate memory for a new node
        node *n = malloc(sizeof(node));
        if (n == NULL) {
            return 1; // Return an error code if memory allocation fails
        }
        
        // Initialize the new node with the provided number
        n->number = number;
        n->next = NULL;

        // Insert the new node at the beginning of the linked list
        n->next = list;
        list = n;
    }

    // Print the elements of the linked list
    node *ptr = list;
    while (ptr != NULL) {
        printf("%i\n", ptr->number);
        ptr = ptr->next;
    }

    // Free the memory allocated for each node in the linked list
    ptr = list;
    while (ptr != NULL){
        node *next = ptr->next;
        free(ptr);
        ptr = next;
    }
}
