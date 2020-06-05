program main
    use precisions
    use formats
    use ioHelper
    implicit none
    integer(kind=IT) :: i
    real(kind=DP) :: t, dt
    real(kind=DP) :: x, v, force, energy, analytic
    real(kind=DP) :: tmp_x, tmp_v
    character(55) :: & ! output_files list {{{
        & output_files(3,2) = reshape( (/ &
!       ! serial#,  status,      fileID
        & "000",    "replace",   "leap-frog_position",   & ! 1
        & "000",    "replace",   "leap-frog_energy"      & ! 2
        & /), shape(output_files) ) ! }}}
    integer(kind=IT) :: num_position(1)
    integer(kind=IT) :: num_energy(1)

    real(kind=DP) :: f1, f2

    call iolists%init(output_files)
    num_position(:) = iolists%get_num("leap-frog_position")
    num_energy(:)   = iolists%get_num("leap-frog_energy")

    dt = 1e-2_DP

    x = 1e0_DP
    v = 0e0_DP
    do i = 1, 1000000
        t = real(i-1)*dt

        f1 = force(x)
        tmp_x = x + (v + f1*dt/2e0_DP)*dt
        f2 = force(tmp_x)
        tmp_v = v + (f1 + f2) * dt/2e0_DP

        x = tmp_x
        v = tmp_v

        energy = 5e-1_DP * x**2 + 5e-1_DP * v**2

        if (mod(i,10) == 0) then
            write(num_position(1), lt//eform4//rt) t, v, x, analytic(t)
            write(num_energy(1),   lt//eform3//rt) t, energy, 5e-1_DP
        endif

    end do

end program main

function force(x)
    use precisions
    real(kind=DP), intent(in) :: x
    real(kind=DP) :: force

    force = - x
end function force

function analytic(t)
    use precisions
    use mathConstants
    real(kind=DP), intent(in) :: t
    real(kind=DP) :: analytic

    analytic = cos(t)
end function analytic
