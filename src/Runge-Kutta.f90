program main
    use precisions
    use formats
    use ioHelper
    implicit none
    integer(kind=IT) :: i
    real(kind=DP) :: t, dt
    real(kind=DP) :: x, v, energy, analytic
    character(55) :: & ! output_files list {{{
        & output_files(3,2) = reshape( (/ &
!       ! serial#,  status,      fileID
        & "000",    "replace",   "Runge-Kutta_position",   & ! 1
        & "000",    "replace",   "Runge-Kutta_energy"      & ! 2
        & /), shape(output_files) ) ! }}}
    integer(kind=IT) :: num_position(1)
    integer(kind=IT) :: num_energy(1)

    real(kind=DP) :: force, velocity
    real(kind=DP) :: k1, k2, k3, k4
    real(kind=DP) :: l1, l2, l3, l4

    call iolists%init(output_files)
    num_position(:) = iolists%get_num("Runge-Kutta_position")
    num_energy(:)   = iolists%get_num("Runge-Kutta_energy")

    dt = 1e-2_DP

    x = 1e0_DP
    v = 0e0_DP
    do i = 1, 1000000
        t = real(i-1)*dt

        k1 = force(   t, v, x)
        l1 = velocity(t, v, x)

        k2 = force(   t + dt/2e0_DP, v + k1*dt/2e0_DP, x + l1*dt/2e0_DP )
        l2 = velocity(t + dt/2e0_DP, v + k1*dt/2e0_DP, x + l1*dt/2e0_DP )

        k3 = force(   t + dt/2e0_DP, v + k2*dt/2e0_DP, x + l2*dt/2e0_DP )
        l3 = velocity(t + dt/2e0_DP, v + k2*dt/2e0_DP, x + l2*dt/2e0_DP )

        k4 = force(   t + dt, v + k3*dt, x + l3*dt )
        l4 = velocity(t + dt, v + k3*dt, x + l3*dt )

        v = v + (k1 + 2e0_DP * k2 + 2e0_DP * k3 + k4) * dt / 6e0_DP
        x = x + (l1 + 2e0_DP * l2 + 2e0_DP * l3 + l4) * dt / 6e0_DP

        energy = 5e-1_DP * x**2 + 5e-1_DP * v**2

        if (mod(i,10) == 0) then
            write(num_position(1), lt//eform4//rt) t, v, x, analytic(t)
            write(num_energy(1),   lt//eform3//rt) t, energy, 5e-1_DP
        endif

    end do

end program main

function force(t, v, x)
    use precisions
    real(kind=DP), intent(in) :: t, v, x
    real(kind=DP) :: force

    force = - x
end function force

function velocity(t, v, x)
    use precisions
    real(kind=DP), intent(in) :: t, v, x
    real(kind=DP) :: velocity

    velocity = v
end function velocity

function analytic(t)
    use precisions
    use mathConstants
    real(kind=DP), intent(in) :: t
    real(kind=DP) :: analytic

    analytic = cos(t)
end function analytic
