! ==============================================================================
! program  : fortranLoop
! version  : 03-Dec-2019
! author   : Zeqing Wang
! purpose  : test the loop time and compare with python
! reference: 
! ==============================================================================




! ==============================================================================
! program  : prec
! type     : module
! version  : 03-Dec-2019
! purpose  : set the precision
! comment  : 
! ==============================================================================
module prec
  implicit none
  
  integer, parameter :: p=16   ! the precision
end module prec
! ==============================================================================




! ==============================================================================
! program  : fortranLoop
! type     : program
! version  : 03-Dec-2019
! comment  : the main program
! ==============================================================================
program fortranLoop
  
  use prec
  implicit none

  real(kind=p) :: start, end, time, a=0.0
  integer :: i, n=1e8

  call cpu_time(start)

  do i = 1, n
     a = 1.0
  end do

  call cpu_time(end)

  time = end - start
  print *, 'Time is', time, 's'
  
  open(1, file='fortranLoopTime.dat')
  write(1, *) time
  
end program fortranLoop
! ==============================================================================



