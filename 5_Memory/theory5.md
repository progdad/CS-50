# Understanding Computer Memory

## Memory Overview
- **Memory**, often referred to as **RAM** (Random Access Memory), is the primary storage in a computer.
- Think of memory as a **library with many shelves**, where each **shelf represents a single byte** of memory.
- **Data** in most computer systems is **stored contiguously** in RAM, meaning **related data** like strings, pictures, or arrays are stored in **adjacent memory locations**.
- Some advanced memory management techniques, such as **virtual memory systems**, may involve non-contiguous storage, where data is **spread across different memory locations**.

## Pointers and Memory Addresses
- In the C programming language, a **pointer** is a variable that **stores the memory address of other variables** or objects assigned to them. Unlike regular variables that store data directly, pointers store memory addresses, acting as a reference to the location in the computer's memory where specific data is stored.
- Pointers play a crucial role in C, **enabling functions to access, manipulate, and modify the values at those addresses directly**. This capability allows for more efficient memory management and enables functions to work directly with the underlying data rather than dealing with copies.

## Strings and Memory
- When assigning a character variable to a string, **both** the **string** and the **variable** are stored **in memory**.
- The **variable serves as a pointer** to the memory address of the first character in the string

## Dynamic Memory Allocation
*Refer to [this file](./memoryManagement.md) to understand this section better*
- The `malloc` function is used to **request a block of memory** from the heap.
- Once the request is granted, the operating system reserves the specified amount of memory.
- When **this memory is no longer needed**, it **should be returned** to the operating system **by calling the** `free` function.

## NULL Pointers
- **NULL** is a **symbolic constant** in C used **exclusively with pointer variables** to indicate the **absence of a valid memory address**.
- It is often represented as a **constant** value with **all bits set to zero**.
- NULL pointers indicate uninitialized or missing memory addresses, enhancing program reliability and safety.

## Garbage Values
- **Garbage values** in C refer to **unpredictable or undefined values** that exist in the memory locations of uninitialized variables.
- When a variable is declared but not explicitly initialized, its initial value is indeterminate and may contain **whatever data happened to be in that memory location**. 
- Garbage values can lead to **unexpected behavior** in programs, making it **essential to initialize** variables **before use** to ensure predictable and meaningful data.

## Memory Swap
- In the [swap.c](./code/pointersAndSpecifiers/swap.c) file, the commented part does not work as expected because it passes integer values to the `swap` function, creating local copies that do not affect the original variables `x` and `y`.
- However, in the uncommented code, we use **pointers to swap values**. This enables **direct manipulation of the memory addresses** of the variables. 

## Buffer Overflow
- **Buffer overflow in C is a security vulnerability** where a program writes more data into a buffer (e.g., an array or string) than it can hold.
- The **excess data overflows into adjacent memory**, potentially causing data corruption or exploitation by malicious actors.
### Prevention Measures:
To prevent buffer overflows:
1. **Validate and Sanitize Input:**
   - Ensure that user input is validated and sanitized before being processed.
2. **Use Safer String Functions:**
   - Replace unsafe string functions like `gets` with safer alternatives like `fgets` or use functions that allow you to specify the maximum number of characters to read.
3. **Allocate Memory Carefully:**
   - Be mindful of memory allocation. Use dynamic memory allocation functions like `malloc` cautiously, and avoid creating fixed-size buffers without adequate checks.

