# Import the fortran subroutine
import f95_fibonacci as f95 
# Call the subroutine
FIB_NUM = 10
fibonacci_list = f95.fibonacci(FIB_NUM)
print(fibonacci_list)
