subroutine fibonacci(n, e)

    implicit none 
    integer :: c, i 
    integer, intent(in) :: n
    integer, intent(out) :: e(n) 

    e(1) = 0
    e(2) = 1 

    do i=3, n+2
        c = e(i-2) + e(i-1) 
        e(i)=c
    end do

    return
end subroutine 
