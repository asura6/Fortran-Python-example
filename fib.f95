subroutine fibonacci(n, e)

    implicit none 
    integer :: c, i 
    integer, intent(in) :: n
    integer, intent(out) :: e(n) ! Integer array of length n

    ! Initialize the first two numbers
    e(1) = 0
    e(2) = 1 

    ! Add n - 2 more values to the array
    do i=3, n+2
        ! The next number is the sum of the two previous nubmers
        c = e(i-2) + e(i-1) 
        e(i) = c
    end do 

    return
end subroutine 
