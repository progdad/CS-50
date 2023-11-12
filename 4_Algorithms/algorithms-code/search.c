#include <stdio.h>
#include "bubbleSort.c"

// The following macro calculates the number of elements in an array:
// by dividing the total size of the array by the size of a single element.
#define length(arr) (sizeof(arr) / sizeof(arr[0]))

// Function to perform binary search on a sorted array
int binarySearch(int arr[], int size, int key);

// Function to print information about an element in the array
int printElement(int element, int index);

int binarySearch(int arr[], int size, int key) {
    int left = 0;
    int right = size - 1;

    while (left <= right) {
        int mid = left + (right - left) / 2;

        // Check if key is present at the middle
        if (arr[mid] == key)
            return mid;

        // If key is greater, ignore the left half
        if (arr[mid] < key)
            left = mid + 1;

        // If key is smaller, ignore the right half
        else
            right = mid - 1;
    }

    // Key not present in the array
    return -1;
}

int printElement(int element, int index) {
    if (index != -1) {
        printf("Number %d found at index %d\n", element, index);
    } else {
        printf("Number %d not found in the array\n", element);
    }
}

int main(void) {
    // Array of numbers
    int nums[] = {1, 8, 9, -4, 33, -10, 402};
    int n = length(nums);

    // Sort the array using bubbleSort function from bubbleSort.c
    bubbleSort(nums, n);

    // Elements to search
    int el1 = -10;
    int el2 = 9;
    int el3 = 22;

    // Perform binary search for the elements
    int index1 = binarySearch(nums, n, el1);
    int index2 = binarySearch(nums, n, el2);
    int index3 = binarySearch(nums, n, el3);

    // Print information about the elements
    printElement(el1, index1);
    printElement(el2, index2);
    printElement(el3, index3);

    /*
    The Output:
        Number -10 found at index 0
        Number 9 found at index 4
        Number 22 not found in the array
    */

    return 0;
}
