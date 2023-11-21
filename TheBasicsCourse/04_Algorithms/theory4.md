# Algorithms in Computer Science

## Definition
- An **algorithm** is a step-by-step, well-defined **set of instructions**(or rules) for solving a problem or completing a task.
- A good algorithm effectively solves the initial problem, balancing efficient execution in terms of time and space while maintaining code readability and simplicity.

## Big O Notation

- **Big O notation** is a method **used to characterize how the performance** of an algorithm, in terms of time or space, **varies** as the size of the input grows.
- It usually **expresses a minimum and maximum number of steps** an algorithm might take in both the best- and worst-case scenarios.
- In Big O notation, **logarithms without a specified base** are typically assumed to be in **base 2**, reflecting the **common occurrence** of algorithms involving **binary operations** and divisions(e.g. binary search, binary trees, etc). 

## Examples of Simple Popular Algorithms

**The most popular, simplest algorithms to consider include:**

### Binary Search

- ****Binary search** is an efficient algorithm for finding a specific item in a sorted list.

### Sorting Algorithms

**And there are several popular sorting algorithms:**

#### Selection Sort

- **Selection Sort** is a simple sorting algorithm that repeatedly selects the smallest (or largest) element from the unsorted part of the array and swaps it with the first unsorted element.
- **Time Complexity:** 
  - Worst Case: O(n^2)
  - Best Case: O(n^2)

#### Bubble Sort

- **Bubble Sort** is a basic sorting algorithm that repeatedly steps through the list, compares adjacent elements, and swaps them if they are in the wrong order. The pass through the list is repeated until the list is sorted.
- **Time Complexity:** 
  - Worst Case: O(n^2)
  - Best Case: ≈O(n) (occurs when the list is already, or almost sorted)

#### Merge Sort

- **Merge Sort**is a divide and conquer algorithm that divides the input array into two halves, recursively sorts each half, and then merges the sorted halves.
- **Time Complexity:** 
  - Worst Case: O(n log n)
  - Best Case: O(n log n)

