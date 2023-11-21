# Memory Management in C Programs

### When a C program is executed, the CPU allocates four key sections in the memory for the program, each serving a specific purpose:

- **Machine Code**: This section contains the compiled program's instructions, loaded from the hard drive into RAM.

- **Globals**: Here, global variables declared within the program are stored.

- **Heap**: The heap is a flexible region for dynamic memory allocation, initially a large contiguous space. Memory is allocated dynamically by functions like `malloc`. The heap can increase in size to meet additional memory requests.

- **Stack**: In C, the stack is used to manage local variables and the specific conditions needed for functions to run. When a function is called, a new 'stack frame' is created. This frame holds everything that function needs, such as its local variables, input arguments, and where to return to when it's done. Each function has its own unique stack frame while running. After a function completes its task, its stack frame is removed, and the program goes back to what it was doing before, restoring the environment necessary for the previous function call. In summary, the stack plays a crucial role in managing the unique conditions required for each function to execute and store its local data. *[More on stack](../6_DataStructures/theory6.md#queues-and-stacks) as a data structure*

These memory sections may not be physically adjacent, and a "guard page" often separates the stack and heap to prevent collisions. The size of the machine code and global variables is fixed at compile-time, while the initial heap size is fixed but can expand as needed during program execution. The program's memory layout is defined by the system, and additional memory segments may exist in between or alongside program memory for system and library functions. Understanding these memory sections and their interactions is crucial for efficient and reliable C program development.
