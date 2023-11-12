#include <stdio.h>

// Function to perform Bubble Sort on an array
void bubbleSort(int arr[], int n) {
    int swapped;

    // Repeat until no more swaps are needed
    do {
        swapped = 0;

        // Traverse the array and swap adjacent elements if they are in the wrong order
        for (int i = 0; i < n - 1; i++) {
            if (arr[i] > arr[i + 1]) {
                // Swap arr[i] and arr[i+1]
                int temp = arr[i];
                arr[i] = arr[i + 1];
                arr[i + 1] = temp;

                // Mark that a swap occurred
                swapped = 1;
            }
        }
    } while (swapped);  // Continue until no more swaps are needed
}
