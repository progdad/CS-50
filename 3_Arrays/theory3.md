# **Arrays and Strings** in C

## **Arrays in C**
- In C, **arrays** are collections of elements of the same data type, stored in **contiguous memory locations**. They are defined with a **fixed size** and offer efficient element access. However, **resizing arrays** is not straightforward and often requires **manual memory management**.

## **Strings in C**
- **Strings** in C are arrays of characters, terminated with a **null character** ('\0'). They are typically stored in **contiguous memory**, with each character represented as a **single byte**.
- **String manipulation** in C often involves **iterating through characters** until the **null character** is encountered.

## **Memory Access and Management**
- Both **arrays and strings** in C offer **direct memory access**, which is different from high-level programming languages. This **direct access** makes them efficient for **low-level programming tasks**.
- However, it's important to note that they require **manual memory management**. In C, developers are responsible for **allocating and deallocating memory**, which can be both **powerful and challenging**.