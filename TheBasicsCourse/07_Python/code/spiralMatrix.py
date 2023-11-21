# This code is never a part of CS50, it's just an interesting problem I wanted to solve. 
# As for CS50, considering how important algorithms are in computer science, 
# I decided to add this problem here as a showcase of a simple, yet an interesting algorithm.

class ClockwiseSpiralMatrix: 
    """
        A clockwise spiral matrix is constructed by dividing it into (n//2) clockwise circles, 
        where n is a positive integer(size of the matrix), where each circle follows the previous one. 
        Let's consider examples for two different values of n:
        
        *For even numbers it's just (n//2) circles. For odd - it's (n//2) circles and the n^2 number in the middle
        
         _____________________________________________________________________________________________________________________
        |                (n = 5)                              |                          (n = 6)                              |
        |_____________________________________________________|_______________________________________________________________|
        |                                                     |                                                               |
        |    1  2  3  4  5                                    |     1  2  3  4  5  6                                          |
        |    16          6           17 18 19                 |     20              7           21 22 23 24                   |
        |    15          7    AND    24    20    AND    5     |     19              8    AND    32       25    AND    33 34   |
        |    14          8           23 22 21                 |     18              9           31       26           36 35   |
        |    13 12 11 10 9                                    |     17             10           30 29 28 27                   |
        |                                                     |     16 15 14 13 12 11                                         |
        |_____________________________________________________|_______________________________________________________________|

        
        And each "circle" is constructed by 4 sides(in the following order): TOP, RIGHT, BOTTOM, LEFT.
        Each side's length is equal to (n-1) in the first circle, and with each circle the length reduces by 2. 

        For example for (n = 5):
            First Circle (each side contains (n - 1) elements):
                (Top: 1, 2, 3, 4)  |  (Right: 5, 6, 7, 8)  |  (Bottom: 9, 10, 11, 12)  |  (Left: 13, 14, 15, 16)
            Second Circle (each side contains ((n - 1) - 2) elements):
                (Top: 17, 18)  |  (Right: 19, 20)  |  (Bottom: 21, 22)  |  (Left: 23, 24)
            And "25" in the center.


        Methods:
        - __init__(self, size: int = None): Initializes a ClockwiseSpiralMatrix instance.
        - construct_spiral_matrix(self): Constructs the clockwise spiral matrix.
        - print_matrix(self): Prints the constructed matrix.
        - __repr__(self): Returns a string representation of the object.  
    """
    
    def __init__(self, size: int = None):
        """
            Attributes:
            - self.size: the size of a matrix
            - self.mtrx: the matrix itself which at first is filled with zeros
            - self._is_printable: a flag that doesn't allow for a matrix to be printed until it's built
        """
        if self._is_size_positive_integer(size):
            self.size = size
        else:
            self.size = self._get_size_from_user()    
        self.mtrx = [[0]*self.size for _ in range(self.size)]
        self._is_printable = False

    def _is_size_positive_integer(self, size):
        return isinstance(size, int) and size > 0

    def _get_size_from_user(self):
        while True:
            try:
                size = int(input("Enter a positive integer for the matrix's size: "))
                if self._is_size_positive_integer(size):
                    return size
                else:
                    print("Invalid value for 'size'. It should be a positive integer.")
            except ValueError:
                print("Not an integer, try again.")
                
    def construct_spiral_matrix(self):
        """
            Local Variables:
            - number: an increasing(from 1 to self.size^2) number that the matrix is filled with step by step
            - index: circles counter, also used for indexing
            - rsize: stands for "reduced size" as it's reduced by 1 because of lists indexing rules
        """
        number, index, rsize = 1, 0, self.size - 1

        half_matrix, miditem = self.size//2, (self.size - 1)//2

        self.mtrx[half_matrix][miditem] = self.size**2

        # Read the explanation to the algorithm in the class documentation string.
        for _ in range(half_matrix):
            for top in range(index, rsize):
                self.mtrx[index][top] = number
                number += 1

            for right_side in range(index, rsize):
                self.mtrx[right_side][rsize] = number
                number += 1

            btm_counter = 0 
            for bottom in range(index, rsize):
                self.mtrx[rsize][rsize - btm_counter] = number
                btm_counter += 1
                number += 1

            left_counter = 0
            for left_side in range(index, rsize):
                self.mtrx[rsize - left_counter][index] = number
                number += 1
                left_counter += 1

            index += 1
            rsize -= 1

        self._is_printable = True

    def print_matrix(self, is_blank_line : bool =True):
        if self._is_printable:
            for matrix_row in self.mtrx:
                print(*matrix_row)
            if is_blank_line:
                print() # It adds blank lines between different matrixes. 
        else:
            print(f"Matrix has not yet been built for the object {self}.")

    def __repr__(self):
        return f"ClockwiseSpiralMatrix(size={self.size})"


if __name__ == "__main__":
    matrix_inst = ClockwiseSpiralMatrix()
    matrix_inst.construct_spiral_matrix()

    matrix_inst2 = ClockwiseSpiralMatrix(8)
    matrix_inst2.construct_spiral_matrix()

    matrix_inst3 = ClockwiseSpiralMatrix(11)

    matrix_inst.print_matrix()  # NxN matrix
    matrix_inst2.print_matrix()  # 8x8 matrix
    matrix_inst3.print_matrix()  # Matrix has not yet been built for the object ClockwiseSpiralMatrix(size=11).
