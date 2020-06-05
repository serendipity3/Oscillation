module precisions ! {{{
    integer, parameter :: DP = selected_real_kind(15, 300)
    integer, parameter :: IT = selected_int_kind(10)
    real(kind=DP), parameter :: EPS = 1e-1_DP**(PRECISION(1e0_DP))
end module precisions ! }}}
module formats ! {{{
    use precisions
    implicit none
!
    character(*), parameter :: space  = ", 2x, "
! FORMAT character sets for output to file {{{
    character(*), parameter :: lt = "("
    character(*), parameter :: rt = ")"

    character(*), parameter :: form1  = "f35.15"
    character(*), parameter :: form2  = form1//space//form1
    character(*), parameter :: form3  = form2//space//form1
    character(*), parameter :: form4  = form3//space//form1
    character(*), parameter :: form5  = form4//space//form1
    character(*), parameter :: form6  = form5//space//form1
    character(*), parameter :: form7  = form6//space//form1
    character(*), parameter :: form8  = form7//space//form1
    character(*), parameter :: form9  = form8//space//form1
!
    character(*), parameter :: eform1 = "e22.15e2"
    character(*), parameter :: eform2 = eform1//space//eform1
    character(*), parameter :: eform3 = eform2//space//eform1
    character(*), parameter :: eform4 = eform3//space//eform1
    character(*), parameter :: eform5 = eform4//space//eform1
    character(*), parameter :: eform6 = eform5//space//eform1
    character(*), parameter :: eform7 = eform6//space//eform1
    character(*), parameter :: eform8 = eform7//space//eform1
    character(*), parameter :: eform9 = eform8//space//eform1
!
    character(*), parameter :: peform1 = "pe22.15e2"
    character(*), parameter :: peform2 = peform1//space//peform1
    character(*), parameter :: peform3 = peform2//space//peform1
    character(*), parameter :: peform4 = peform3//space//peform1
    character(*), parameter :: peform5 = peform4//space//peform1
    character(*), parameter :: peform6 = peform5//space//peform1
    character(*), parameter :: peform7 = peform6//space//peform1
    character(*), parameter :: peform8 = peform7//space//peform1
    character(*), parameter :: peform9 = peform8//space//peform1
!
    character(*), parameter :: zform1 = form1//space//form1
    character(*), parameter :: zform2 = zform1//space//zform1
    character(*), parameter :: zform3 = zform2//space//zform1
    character(*), parameter :: zform4 = zform3//space//zform1
    character(*), parameter :: zform5 = zform4//space//zform1
    character(*), parameter :: zform6 = zform5//space//zform1
    character(*), parameter :: zform7 = zform6//space//zform1
    character(*), parameter :: zform8 = zform7//space//zform1
    character(*), parameter :: zform9 = zform8//space//zform1
!
    character(*), parameter :: iform1 = "i10.9"
    character(*), parameter :: iform2 = iform1//space//iform1
    character(*), parameter :: iform3 = iform2//space//iform1
    character(*), parameter :: iform4 = iform3//space//iform1
    character(*), parameter :: iform5 = iform4//space//iform1
    character(*), parameter :: iform6 = iform5//space//iform1
    character(*), parameter :: iform7 = iform6//space//iform1
    character(*), parameter :: iform8 = iform7//space//iform1
    character(*), parameter :: iform9 = iform8//space//iform1
! }}}
! FORMAT character sets for print to display {{{
    character(*), parameter :: Dlt = '(" |"'//space
    character(*), parameter :: Drt = ')'

    character(*), parameter :: Dform1  = "f0.15"
    character(*), parameter :: Dform2  = Dform1//space//Dform1
    character(*), parameter :: Dform3  = Dform2//space//Dform1
    character(*), parameter :: Dform4  = Dform3//space//Dform1
    character(*), parameter :: Dform5  = Dform4//space//Dform1
    character(*), parameter :: Dform6  = Dform5//space//Dform1
    character(*), parameter :: Dform7  = Dform6//space//Dform1
    character(*), parameter :: Dform8  = Dform7//space//Dform1
    character(*), parameter :: Dform9  = Dform8//space//Dform1
!
    character(*), parameter :: Deform1 = "e22.15e2"
    character(*), parameter :: Deform2 = Deform1//space//Deform1
    character(*), parameter :: Deform3 = Deform2//space//Deform1
    character(*), parameter :: Deform4 = Deform3//space//Deform1
    character(*), parameter :: Deform5 = Deform4//space//Deform1
    character(*), parameter :: Deform6 = Deform5//space//Deform1
    character(*), parameter :: Deform7 = Deform6//space//Deform1
    character(*), parameter :: Deform8 = Deform7//space//Deform1
    character(*), parameter :: Deform9 = Deform8//space//Deform1
!
    character(*), parameter :: Dpeform1 = "pe22.15e2"
    character(*), parameter :: Dpeform2 = Dpeform1//space//Dpeform1
    character(*), parameter :: Dpeform3 = Dpeform2//space//Dpeform1
    character(*), parameter :: Dpeform4 = Dpeform3//space//Dpeform1
    character(*), parameter :: Dpeform5 = Dpeform4//space//Dpeform1
    character(*), parameter :: Dpeform6 = Dpeform5//space//Dpeform1
    character(*), parameter :: Dpeform7 = Dpeform6//space//Dpeform1
    character(*), parameter :: Dpeform8 = Dpeform7//space//Dpeform1
    character(*), parameter :: Dpeform9 = Dpeform8//space//Dpeform1
!
    character(*), parameter :: Dzform1 = Dform1//space//Dform1
    character(*), parameter :: Dzform2 = Dzform1//space//Dzform1
    character(*), parameter :: Dzform3 = Dzform2//space//Dzform1
    character(*), parameter :: Dzform4 = Dzform3//space//Dzform1
    character(*), parameter :: Dzform5 = Dzform4//space//Dzform1
    character(*), parameter :: Dzform6 = Dzform5//space//Dzform1
    character(*), parameter :: Dzform7 = Dzform6//space//Dzform1
    character(*), parameter :: Dzform8 = Dzform7//space//Dzform1
    character(*), parameter :: Dzform9 = Dzform8//space//Dzform1
!
    character(*), parameter :: Diform1 = "i0.9"
    character(*), parameter :: Diform2 = Diform1//space//Diform1
    character(*), parameter :: Diform3 = Diform2//space//Diform1
    character(*), parameter :: Diform4 = Diform3//space//Diform1
    character(*), parameter :: Diform5 = Diform4//space//Diform1
    character(*), parameter :: Diform6 = Diform5//space//Diform1
    character(*), parameter :: Diform7 = Diform6//space//Diform1
    character(*), parameter :: Diform8 = Diform7//space//Diform1
    character(*), parameter :: Diform9 = Diform8//space//Diform1
! }}}
!
    character(*), parameter :: HR = ' - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - '
    character(*), parameter :: NB = ', \' ! no break
    character(:), allocatable :: wformat
    character(24), allocatable :: tmp_format(:)
!
    contains
        subroutine header(str, top_, bottom_) ! {{{
            character(*), intent(in) :: str
            logical, intent(in), optional :: top_, bottom_
            integer(kind=IT) :: len_str
            character(75) :: raw
            character(79) :: deco
            logical :: top_HR, bot_HR
                top_HR = .true.
                bot_HR = .true.
                if ( present(top_) ) top_HR = top_
                if ( present(bottom_) ) bot_HR = bottom_
                len_str = len_trim(str)
                if (len_str < 75) then
                    raw = trim(str)
                else
                    raw = str(1:72)//'...'
                end if
                deco = '| '//raw//' |'
!
                if ( top_HR ) print *, HR
                print *, deco
                if ( bot_HR ) print *, HR
            return
        end subroutine header ! }}}

        subroutine error_header(str, top_, bottom_) ! {{{
            character(*), intent(in) :: str
            logical, intent(in), optional :: top_, bottom_
            integer(kind=IT) :: len_str
            character(67) :: raw
            character(79) :: deco
            logical :: top_HR, bot_HR
                top_HR = .true.
                bot_HR = .true.
                if ( present(top_) ) top_HR = top_
                if ( present(bottom_) ) bot_HR = bottom_
                len_str = len_trim(str)
                if (len_str < 75) then
                    raw = trim(str)
                else
                    raw = str(1:72)//'...'
                end if
                deco = '| *** '//raw//' *** |'
!
                if ( top_HR ) then
                    print *, HR
                    print *, "| - + - + -                        E R R O R                        - + - + - |"
                end if
                print *, deco
                if ( top_HR ) then
                    print *, "|"
                    print *, HR
                end if
            return
        end subroutine error_header ! }}}

        subroutine set_wformat_from_tmp_format(format_in, format_out) ! {{{
            implicit none
            character(24), intent(in) :: format_in(:)
            character(:), allocatable, intent(inout) :: format_out
            integer(kind=IT) :: j
                do j = 1, size(format_in)
                    format_out = format_out//format_in(j)
                end do
            return
        end subroutine set_wformat_from_tmp_format ! }}}

        subroutine join_params(list_, param_, jointed_) ! {{{
            implicit none
            character(*), intent(in) :: list_(:)
            real(kind=DP), intent(in) :: param_(:)
            character(:), allocatable :: jointed_
            integer(kind=IT) :: i

            character(10) :: param
                if (size(list_) == size(param_)) then
                    jointed_ = ""
                    do i = lbound(list_,1), ubound(list_,1)
                        write(param, lt//'1p e9.2e2'//rt) param_(i)
                        jointed_ = jointed_//trim(adjustl(list_(i)))//trim(adjustl(param))

                        if (i /= ubound(list_,1)) jointed_ = jointed_//"_"
                    end do
                else
                    print *, "Error!, size of list_(:) and param_(:) do not match."
                end if
            return
        end subroutine join_params ! }}}
end module formats ! }}}
module ioComponent  ! {{{
    !!
    !! This module uses 'system call'
    !! call system( mkdir -p )
    !!
    use precisions
!    use exceptation
    use formats
    type :: IOunit ! {{{
        integer(kind=IT) :: unit
        character(:), allocatable :: dir
        character(:), allocatable :: name
        character(:), allocatable :: params
        character(:), allocatable :: file
        character(7) :: status
        type(IOunit), pointer :: next => null()
        contains
        procedure, pass :: init     => init_IOunit
        procedure, pass :: init_dir => init_with_dir_IOunit
        procedure, pass :: init_prm => init_with_parameter_IOunit
        procedure, pass :: open     => open_IOunit
        procedure, pass :: close    => close_IOunit
    end type IOunit! }}}
    type :: IOlist ! {{{
        integer(kind=IT) :: size = 0
        type(IOunit), pointer :: item => null()
        type(IOunit), pointer :: last => null()
        contains
        procedure, pass :: init     => init_IOlist
        procedure, pass :: init_dir => init_with_dir_IOlist
        procedure, pass :: init_prm => init_with_parameter_IOlist
        procedure, pass :: add      => add_IOunit_IOlist
        procedure, pass :: add_dir  => add_IOunit_with_dir_IOlist
        procedure, pass :: add_prm  => add_IOunit_with_parameter_IOlist
        procedure, pass :: get_num  => get_num_IOlist
        procedure, pass :: show     => show_IOlist
        procedure, pass :: rm       => rm_IOunit_IOlist
        procedure, pass :: close    => close_IOlist
        final :: finalize_IOlist
    end type IOlist ! }}}
    contains ! {{{ ! subroutine IOunit {{{
        subroutine init_IOunit(this, unit_, name_, file_, status_) ! {{{
            implicit none
            class(IOunit), intent(inout) :: this
            integer(kind=IT), intent(in) :: unit_
            character(*), intent(in) :: name_, file_, status_
                this%unit   = unit_
                this%name   = trim(adjustl(name_))
                this%file   = trim(adjustl(file_))
                this%status = trim(adjustl(status_))
                call this%open()
            return
        end subroutine init_IOunit ! }}}

        subroutine init_with_dir_IOunit(this, unit_, name_, file_, status_, dir_) ! {{{
            implicit none
            class(IOunit), intent(inout) :: this
            integer(kind=IT), intent(in) :: unit_
            character(*), intent(in) :: name_, file_, status_, dir_
                this%unit   = unit_
                this%name   = trim(adjustl(name_))
                this%dir    = trim(adjustl(dir_))
                this%file   = trim(adjustl(file_))
                this%status = trim(adjustl(status_))
                call this%open()
            return
        end subroutine init_with_dir_IOunit ! }}}

        subroutine init_with_parameter_IOunit(this, unit_, name_, file_, status_, params_) ! {{{
            implicit none
            class(IOunit), intent(inout) :: this
            integer(kind=IT), intent(in) :: unit_
            character(*), intent(in) :: name_, file_, status_, params_
                this%unit   = unit_
                this%name   = trim(adjustl(name_))
                this%params = trim(adjustl(params_))
                this%file   = trim(adjustl(file_))
                this%status = trim(adjustl(status_))
                call this%open()
            return
        end subroutine init_with_parameter_IOunit ! }}}

        subroutine open_IOunit(this)   ! {{{
            implicit none
            class(IOunit), intent(inout) :: this
                open(this%unit, file=trim(this%file), status=trim(this%status))
            return
        end subroutine open_IOunit ! }}}

        subroutine close_IOunit(this)   ! {{{
            implicit none
            class(IOunit), intent(inout) :: this
                close(this%unit)
            return
        end subroutine close_IOunit ! }}}
! }}}
! subroutine IOlist {{{

        subroutine init_IOlist(this, outputfiles_) ! {{{
            implicit none
            class(IOlist), intent(inout) :: this
            character(*), intent(in) :: outputfiles_(:,:)
            integer(kind=IT) :: i
            integer(kind=IT) :: unit_num, comp_num
            character(7) :: stat
                allocate(this%item)
                do i = lbound(outputfiles_,2), ubound(outputfiles_,2)
                    read(outputfiles_(1,i), *) comp_num
                    stat = trim(outputfiles_(2,i))
                    call this%add(outputfiles_(3,i), stat, comp_num)
                end do
                call this%show()
            return
        end subroutine init_IOlist ! }}}

        subroutine init_with_dir_IOlist(this, outputfiles_, dir_) ! {{{
            implicit none
            class(IOlist), intent(inout) :: this
            character(*), intent(in) :: outputfiles_(:,:)
            character(*), intent(in) :: dir_
            integer(kind=IT) :: i
            integer(kind=IT) :: unit_num, comp_num
            character(7) :: stat
            character(:), allocatable :: command
            character(:), allocatable :: sh_mkdir
                sh_mkdir = "mkdir -p "//dir_
                call system(sh_mkdir)

                allocate(this%item)
                do i = lbound(outputfiles_,2), ubound(outputfiles_,2)
                    read(outputfiles_(1,i), *) comp_num
                    stat = trim(outputfiles_(2,i))
                    call this%add_dir(outputfiles_(3,i), stat, dir_, comp_num)
                end do
                call this%show()
            return
        end subroutine init_with_dir_IOlist ! }}}

        subroutine init_with_parameter_IOlist(this, outputfiles_, param_) ! {{{
            implicit none
            class(IOlist), intent(inout) :: this
            character(*), intent(in) :: outputfiles_(:,:)
            character(*), intent(in) :: param_
            integer(kind=IT) :: i
            integer(kind=IT) :: unit_num, comp_num
            character(7) :: stat
            character(:), allocatable :: command

                allocate(this%item)
                do i = lbound(outputfiles_,2), ubound(outputfiles_,2)
                    read(outputfiles_(1,i), *) comp_num
                    stat = trim(outputfiles_(2,i))
                    call this%add_prm(outputfiles_(3,i), stat, param_, comp_num)
                end do
                call this%show()
            return
        end subroutine init_with_parameter_IOlist ! }}}

        subroutine add_IOunit_IOlist(this, name_, status_, component_num_)   ! {{{
            implicit none
            class(IOlist), intent(inout) :: this
            character(*), intent(in) :: name_, status_
            integer(kind=IT), intent(in), optional :: component_num_
            integer(kind=IT) :: branch(1:3), i_b1, i_b2, i_b3
            integer(kind=IT) :: i
            integer(kind=IT) :: add_num
            integer(kind=IT) :: unit_number
            type(IOunit), pointer :: new_item
            character(4) :: label
            character(:), allocatable :: file_name
            character(:), allocatable :: work
                if (this%size == 0) then
                    this%last => this%item
                    unit_number = 100
                else
                    allocate(new_item)
                    unit_number = this%last%unit + 1
                    this%last%next => new_item
                    this%last => new_item
                end if
! set "add_num" and "branch" | how many IOunits are added {{{
                if ( present(component_num_ ) .and. ( component_num_ /= 0 ) ) then
                    branch(3) = component_num_/100
                    branch(2) = component_num_/10 - branch(3)*100
                    branch(1) = component_num_ - branch(3)*100 - branch(2)*10
                    add_num = 1
                    do i = 1, 3
                        if ( branch(i) > 0) then
                            add_num = add_num*( branch(i) + 1 )
                        end if
                    end do
                else
                    add_num = 1
                    branch(1:3) = 0
                end if
! }}}
! set label's format {{{
                if ( branch(3) /= 0) then
                    work = lt//'"_", i3.3'//rt
                else
                    if ( branch(2) /= 0) then
                        work = lt//'"_", i2.2'//rt
                    else
                        if( branch(1) /= 0) then
                            work = lt//'"_", i1.1'//rt
                        else
                            label = ""
                        end if
                    end if
                end if
!}}}

                i = 0
                do i_b3 = 0, branch(3)
                do i_b2 = 0, branch(2)
                do i_b1 = 0, branch(1)
                    if( component_num_ /= 0 ) then
                        write(label, work) i_b3*100 + i_b2*10 + i_b1
                        file_name = trim(name_)//trim(label)//".dat"
                    else
                        file_name = trim(name_)//".dat"
                    end if
                    call this%last%init(unit_number+i, trim(name_), trim(file_name), status_)

                    i = i + 1
                    if ( i < add_num ) then
                        allocate(new_item)
                        this%last%next => new_item
                        this%last => new_item
                    end if
                end do
                end do
                end do

                this%size = this%size + add_num
            return
        end subroutine add_IOunit_IOlist ! }}}

        subroutine add_IOunit_with_dir_IOlist(this, name_, status_, dir_, component_num_)   ! {{{
            implicit none
            class(IOlist), intent(inout) :: this
            character(*), intent(in) :: name_, status_, dir_
            integer(kind=IT), intent(in), optional :: component_num_
            integer(kind=IT) :: branch(1:3), i_b1, i_b2, i_b3
            integer(kind=IT) :: i
            integer(kind=IT) :: add_num
            integer(kind=IT) :: unit_number
            type(IOunit), pointer :: new_item
            character(4) :: label
            character(:), allocatable :: file_name
            character(:), allocatable :: work
                if (this%size == 0) then
                    this%last => this%item
                    unit_number = 100
                else
                    allocate(new_item)
                    unit_number = this%last%unit + 1
                    this%last%next => new_item
                    this%last => new_item
                end if
! set "add_num" and "branch" | how many IOunits are added {{{
                if ( present(component_num_ ) .and. ( component_num_ /= 0 ) ) then
                    branch(3) = component_num_/100
                    branch(2) = component_num_/10 - branch(3)*100
                    branch(1) = component_num_ - branch(3)*100 - branch(2)*10
                    add_num = 1
                    do i = 1, 3
                        if ( branch(i) > 0) then
                            add_num = add_num*( branch(i) + 1 )
                        end if
                    end do
                else
                    add_num = 1
                    branch(1:3) = 0
                end if
! }}}
! set label's format {{{
                if ( branch(3) /= 0) then
                    work = lt//'"_", i3.3'//rt
                else
                    if ( branch(2) /= 0) then
                        work = lt//'"_", i2.2'//rt
                    else
                        if( branch(1) /= 0) then
                            work = lt//'"_", i1.1'//rt
                        else
                            label = ""
                        end if
                    end if
                end if
!}}}

                i = 0
                do i_b3 = 0, branch(3)
                do i_b2 = 0, branch(2)
                do i_b1 = 0, branch(1)
                    if( component_num_ /= 0 ) then
                        write(label, work) i_b3*100 + i_b2*10 + i_b1
                        file_name = dir_//"/"//trim(name_)//trim(label)//".dat"
                    else
                        file_name = dir_//"/"//trim(name_)//".dat"
                    end if
                    call this%last%init_dir(unit_number+i, trim(name_), trim(file_name), status_, dir_)

                    i = i + 1
                    if ( i < add_num ) then
                        allocate(new_item)
                        this%last%next => new_item
                        this%last => new_item
                    end if
                end do
                end do
                end do

                this%size = this%size + add_num
            return
        end subroutine add_IOunit_with_dir_IOlist ! }}}

        subroutine add_IOunit_with_parameter_IOlist(this, name_, status_, param_, component_num_)   ! {{{
            implicit none
            class(IOlist), intent(inout) :: this
            character(*), intent(in) :: name_, status_, param_
            integer(kind=IT), intent(in), optional :: component_num_
            integer(kind=IT) :: branch(1:3), i_b1, i_b2, i_b3
            integer(kind=IT) :: i
            integer(kind=IT) :: add_num
            integer(kind=IT) :: unit_number
            type(IOunit), pointer :: new_item
            character(4) :: label
            character(:), allocatable :: file_name
            character(:), allocatable :: work
                if (this%size == 0) then
                    allocate(this%item)
                    this%last => this%item
                    unit_number = 100
                else
                    allocate(new_item)
                    unit_number = this%last%unit + 1
                    this%last%next => new_item
                    this%last => new_item
                end if
! set "add_num" and "branch" | how many IOunits are added {{{
                if ( present(component_num_ ) .and. ( component_num_ /= 0 ) ) then
                    branch(3) = component_num_/100
                    branch(2) = component_num_/10 - branch(3)*100
                    branch(1) = component_num_ - branch(3)*100 - branch(2)*10
                    add_num = 1
                    do i = 1, 3
                        if ( branch(i) > 0) then
                            add_num = add_num*( branch(i) + 1 )
                        end if
                    end do
                else
                    add_num = 1
                    branch(1:3) = 0
                end if
! }}}
! set label's format {{{
                if ( branch(3) /= 0) then
                    work = lt//'"_", i3.3'//rt
                else
                    if ( branch(2) /= 0) then
                        work = lt//'"_", i2.2'//rt
                    else
                        if( branch(1) /= 0) then
                            work = lt//'"_", i1.1'//rt
                        else
                            label = ""
                        end if
                    end if
                end if
!}}}

                i = 0
                do i_b3 = 0, branch(3)
                do i_b2 = 0, branch(2)
                do i_b1 = 0, branch(1)
                    if( component_num_ /= 0 ) then
                        write(label, work) i_b3*100 + i_b2*10 + i_b1
                        file_name = trim(name_)//trim(label)//"_"//param_//".dat"
                    else
                        file_name = trim(name_)//"_"//param_//".dat"
                    end if
                    call this%last%init_prm(unit_number+i, trim(name_), trim(file_name), status_, param_)

                    i = i + 1
                    if ( i < add_num ) then
                        allocate(new_item)
                        this%last%next => new_item
                        this%last => new_item
                    end if
                end do
                end do
                end do

                this%size = this%size + add_num
            return
        end subroutine add_IOunit_with_parameter_IOlist ! }}}

        subroutine rm_IOunit_IOlist(this, unit_num_) ! {{{
            implicit none
            class(IOlist), intent(inout) :: this
            integer(kind=IT), intent(in) :: unit_num_
            integer(kind=IT) :: i
            type(IOunit), pointer :: pointer_item, pointer_prev
                pointer_item => this%item
                pointer_prev => null()
                do while ( associated(pointer_item) )
                    if ( pointer_item%unit == unit_num_) then
                        if ( associated(pointer_prev) ) then
                            pointer_prev%next => pointer_item%next
                        else
                            this%item => this%item%next
                        end if
                        call pointer_item%close()
                        pointer_item%next => null()
                        deallocate(pointer_item)
                    end if
                    pointer_prev => pointer_item
                    pointer_item => pointer_item%next
                end do
            return
        end subroutine rm_IOunit_IOlist ! }}}

        subroutine close_IOlist(this)    ! {{{
            implicit none
            class(IOlist), intent(inout) :: this
            type(IOunit), pointer :: pointer_item
                pointer_item => this%item
                do while ( associated(pointer_item) )
                    call this%item%close()
                    pointer_item => pointer_item%next
                end do
            return
        end subroutine close_IOlist  ! }}}

        subroutine show_IOlist(this) ! {{{
            implicit none
            class(IOlist), intent(inout) :: this
            type(IOunit), pointer :: pointer_item
            character(:), allocatable :: work
                call header('SHOW IO lists')
                work = lt//'"| unit #: "'//'i4.4'//'",   status: "'//'a7'//'",   file: "'//'a'//rt
!
                pointer_item => this%item
                do while ( associated(pointer_item) )
                    print work, pointer_item%unit, pointer_item%status, pointer_item%file
                    pointer_item => pointer_item%next
                end do
                print *, HR
            return
        end subroutine show_IOlist ! }}}

        function get_num_IOlist(this, name_) result(unit_num_) ! {{{
            implicit none
            class(IOlist), intent(inout) :: this
            character(*), intent(in) :: name_
            integer(kind=IT), allocatable :: unit_num_(:)
            integer(kind=IT) :: i, j
            integer(kind=IT) :: workspace(1:this%size)
            type(IOunit), pointer :: pointer_item
                j = 0
                pointer_item => this%item
                do while ( associated(pointer_item) )
                    if ( pointer_item%name == trim(name_) ) then
                        j =  j + 1
                        workspace(j) = pointer_item%unit
                    end if
                    pointer_item => pointer_item%next
                end do
                allocate(unit_num_(1:j))
                unit_num_(1:j) = workspace(1:j)
            return
        end function get_num_IOlist ! }}}

        subroutine finalize_IOlist(this) ! {{{
            implicit none
            type(IOlist), intent(inout) :: this
                call this%close()
! Debug level 1 {{{
#if debug>=1
                print *, "finalizing IOlist..."

#endif
! }}}
            return
        end subroutine finalize_IOlist ! }}}
! }}}
! }}}
end module ioComponent ! }}}
module ioHelper ! {{{
    use precisions
    use formats
    use ioComponent
    implicit none
    type(IOlist) :: iolists
end module ioHelper ! }}}
module mathConstants ! {{{
    use precisions
!    use exceptation
    use ioHelper
    implicit none
    real(kind=DP), parameter :: pi = 4e0_DP*atan(1e0_DP)
    complex(kind=DP), parameter :: z0 = cmplx(0e0_DP,0e0_DP)
    complex(kind=DP), parameter :: z1 = cmplx(1e0_DP,0e0_DP)
    complex(kind=DP), parameter :: zi = cmplx(0e0_DP,1e0_DP)
    real(kind=DP), parameter :: units(3, 3) = reshape( (/ 1e0_DP,0e0_DP,0e0_DP, 0e0_DP,1e0_DP,0e0_DP, 0e0_DP,0e0_DP,1e0_DP /), shape(units))
    complex(kind=DP), parameter :: sigma_0(2, 2) =    reshape( (/ 1e0_DP,  0e0_DP, 0e0_DP,  1e0_DP /), shape(sigma_0))
    complex(kind=DP), parameter :: sigma_x(2, 2) =    reshape( (/ 0e0_DP,  1e0_DP, 1e0_DP,  0e0_DP /), shape(sigma_x))
    complex(kind=DP), parameter :: sigma_y(2, 2) = zi*reshape( (/ 0e0_DP, -1e0_DP, 1e0_DP,  0e0_DP /), shape(sigma_y))
    complex(kind=DP), parameter :: sigma_z(2, 2) =    reshape( (/ 1e0_DP,  0e0_DP, 0e0_DP, -1e0_DP /), shape(sigma_z))
    complex(kind=DP), parameter :: sigma(2, 2, 0:3) = reshape( &
                                                     &(/ z1, z0, z0, z1, &
                                                     &   z0, z1, z1, z0, &
                                                     &   z0,-zi, zi, z0, &
                                                     &   z1, z0, z0,-z1  /), shape(sigma))


    public:: pi, zi, sigma
    contains

! condition of an efficient convergence for bisec routine ! {{{
! - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
! HOW TO USE
! - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
! hoge hoge...
! - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
! EX)
!   real(kind=DP), dimension(1:n) :: s_in, s_out, diff
!   real(kind=DP) :: error_new, error_old
!       do i = 1, 100
!
!           <some calculations for s_in & s_out>
!
!           diff(1:n) = s_out(1:n) - s_in(1:n)
!           error_new = sqrt( sum(diff**2) ) / sqrt( sum(s_out**2) )
!           call set_ratio(ratio, error_new,error_old, 5d-3)
!
!           s_in(1:n) = ratio * s_out(1:n) + (1e0_DP - ratio) * s_in(1:n)
!       end do
! - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
    subroutine set_ratio(ratio_, error_new_, error_old_, ratio_eps_) ! {{{
        implicit none
        real(kind=DP), intent(inout) :: ratio_
        real(kind=DP), intent(inout) :: error_old_
        real(kind=DP), intent(in)    :: error_new_
        real(kind=DP), intent(in)    :: ratio_eps_
            if ( error_old_ /= 0e0_DP) then
                if (error_new_ > error_old_*2e0_DP) then
                    ratio_ = ratio_*1e-1_DP
                else if (error_new_ > error_old_) then
                    ratio_ = ratio_ / 2e0_DP
                else
                    ratio_ = ratio_ * 1.15e0_DP
                endif
                if (ratio_ < ratio_eps_) ratio_ = 2e0_DP!10.0e0_DP
            end if
            error_old_ = error_new_
        return
    end subroutine set_ratio ! }}}
! }}}

    function theta(x,y) ! {{{
        implicit none
        real(kind=DP) :: x, y, theta
            theta = ( 1e0_DP + (x-y)/abs(x-y) ) / 2e0_DP
        return
    end function theta ! }}}

end module mathConstants  ! }}}
module modVector ! {{{
    use precisions
    use formats
    type :: vector ! {{{
        integer(kind=IT) :: dim
        real(kind=DP), allocatable :: value(:)
        contains
        procedure, pass :: init => init_vector
        procedure, pass :: length_vector
        procedure, pass :: length_vector_vector
        generic :: length => length_vector, length_vector_vector

        procedure, pass :: assign_vector
        procedure, pass :: assign_vector_vector
        procedure, pass :: add_vector
        procedure, pass :: minus_vector
        procedure, pass :: multiply_vector
        procedure, pass(this) :: multiply2_vector
        procedure, pass :: divide_vector

        procedure, pass :: dot_product_vector
        procedure, pass :: cross_product_vector

        procedure, pass :: write_formatted_vector

        generic :: assignment(=) => assign_vector, assign_vector_vector
        generic :: operator(+) => add_vector
        generic :: operator(-) => minus_vector
        generic :: operator(*) => multiply_vector, multiply2_vector
        generic :: operator(/) => divide_vector

        generic :: operator(.dot.) => dot_product_vector
        generic :: operator(.x.) => cross_product_vector

        generic :: write(formatted) => write_formatted_vector
        final :: finalize_vector
    end type vector ! }}}
    type :: vectorComplex ! {{{
        integer(kind=IT) :: dim
        complex(kind=DP), allocatable :: value(:)
        contains
        procedure, pass :: init => init_vectorComplex
        procedure, pass :: conjg => conjg_vectorComplex
        procedure, pass :: length_vectorComplex
        procedure, pass :: length_vector_vectorComplex
        generic :: length => length_vectorComplex, length_vector_vectorComplex

        procedure, pass :: assign_vectorComplex
        procedure, pass :: assign_vector_vectorComplex
        procedure, pass :: add_vectorComplex
        procedure, pass(this) :: add2_vectorComplex
        procedure, pass :: minus_vectorComplex
        procedure, pass(this) :: minus2_vectorComplex
        procedure, pass :: multiply_vectorComplex
        procedure, pass(this) :: multiply2_vectorComplex
        procedure, pass :: divide_vectorComplex

        procedure, pass :: dot_product_vectorComplex
        procedure, pass :: cross_product_vectorComplex

        procedure, pass :: write_formatted_vectorComplex

        generic :: assignment(=) => assign_vectorComplex, assign_vector_vectorComplex
        generic :: operator(+) => add_vectorComplex, add2_vectorComplex
        generic :: operator(-) => minus_vectorComplex, minus2_vectorComplex
        generic :: operator(*) => multiply_vectorComplex, multiply2_vectorComplex
        generic :: operator(/) => divide_vectorComplex

        generic :: operator(.dot.) => dot_product_vectorComplex
        generic :: operator(.x.) => cross_product_vectorComplex

        generic :: write(formatted) => write_formatted_vectorComplex
        final :: finalize_vectorComplex
    end type vectorComplex ! }}}
    contains
! procedures for vector {{{
        subroutine init_vector(this, n) ! {{{
            class(vector), intent(inout) :: this
            integer(kind=IT), intent(in) :: n
                this%dim = n
                allocate(this%value(1:n))
            return
        end subroutine init_vector ! }}}

        subroutine finalize_vector(this) ! {{{
            implicit none
            type(vector), intent(inout) :: this
                deallocate(this%value)
            return
        end subroutine finalize_vector ! }}}

        function length_vector(this) result(res) ! {{{
            implicit none
            class(vector), intent(in) :: this
            real(kind=DP) :: res
            integer(kind=IT) :: i
                res = 0e0_DP
                do i = 1, this%dim
                    res = res + this%value(i)**2
                end do
                res = sqrt(res)
            return
        end function length_vector ! }}}

        function length_vector_vector(this, v_) result(res) ! {{{
            implicit none
            class(vector), intent(in) :: this
            class(vector), intent(in) :: v_
            real(kind=DP) :: res
            integer(kind=IT) :: i
                res = 0e0_DP
                do i = 1, this%dim
                    res = res + (this%value(i) - v_%value(i))**2
                end do
                res = sqrt(res)
            return
        end function length_vector_vector ! }}}

        subroutine assign_vector(this, v_) ! {{{
            implicit none
            class(vector), intent(inout) :: this
            class(*), intent(in) :: v_
                select type (v_)
                    type is (real(kind=DP))
                        this%value(:) = v_
                    type is (vector)
                        this%value(:) = v_%value(:)
                end select
            return
        end subroutine assign_vector ! }}}

        subroutine assign_vector_vector(this, v_) ! {{{
            implicit none
            class(vector), intent(inout) :: this
            class(*), intent(in) :: v_(:)
                select type (v_)
                    type is (real(kind=DP))
                        this%value(:) = v_(:)
                end select
            return
        end subroutine assign_vector_vector ! }}}

        function add_vector(this, p_) result(res) ! {{{
            implicit none
            class(vector), intent(in) :: this
            class(vector), intent(in) :: p_
            class(vector), allocatable:: res
            integer(kind=IT) :: i
                allocate(res)
                call res%init(this%dim)
                if (this%dim == p_%dim) then
                    res%value(:) = this%value(:) + p_%value(:)
                else
                    print *, "Error, dimension of the vectors does not match."
                end if
            return
        end function add_vector ! }}}

        function minus_vector(this, p_) result(res) ! {{{
            implicit none
            class(vector), intent(in) :: this
            class(vector), intent(in) :: p_
            class(vector), allocatable:: res
            integer(kind=IT) :: i
                allocate(res)
                call res%init(this%dim)
                if (this%dim == p_%dim) then
                    res%value(:) = this%value(:) - p_%value(:)
                else
                    print *, "Error, dimension of the vectors does not match."
                end if
            return
        end function minus_vector ! }}}

        function multiply_vector(this, p_) result(res) ! {{{
            implicit none
            class(vector), intent(in) :: this
            CLASS(*), intent(in) :: p_
            class(vector), allocatable :: res
                allocate(res)
                call res%init(this%dim)
                select type(p_)
                    type is (real(kind=DP))
                        res%value(:) = this%value(:) * p_
                end select
            return
        end function multiply_vector ! }}}

        function multiply2_vector(p_, this) result(res) ! {{{
            implicit none
            class(vector), intent(in) :: this
            CLASS(*), intent(in) :: p_
            class(vector), allocatable :: res
                allocate(res)
                call res%init(this%dim)
                select type(p_)
                    type is (real(kind=DP))
                        res%value(:) = p_ * this%value(:)
                end select
            return
        end function multiply2_vector ! }}}

        function divide_vector(this, p_) result(res) ! {{{
            implicit none
            class(vector), intent(in) :: this
            CLASS(*), intent(in) :: p_
            class(vector), allocatable :: res
                allocate(res)
                call res%init(this%dim)
                select type(p_)
                    type is (real(kind=DP))
                        res%value(:) = this%value(:) / p_
                end select
            return
        end function divide_vector ! }}}

        function dot_product_vector(this, p_) result(res) ! {{{
            implicit none
            class(vector), intent(in) :: this
            class(vector), intent(in) :: p_
            real(kind=DP) :: res
                if (this%dim == p_%dim) then
                    res = dot_product(this%value(:), p_%value(:))
                else
                    print *, "Error, dimension of the vectors does not match."
                end if
        end function dot_product_vector ! }}}

        function cross_product_vector(this, p_) result(res) ! {{{
            implicit none
            class(vector), intent(in) :: this
            class(vector), intent(in) :: p_
            class(vector), allocatable :: res
                allocate(res)
                call res%init(this%dim)
                if ((this%dim == p_%dim) .and. (this%dim == 3_IT)) then
                    res%value(1) = this%value(2) * p_%value(3) - this%value(3) * p_%value(2)
                    res%value(2) = this%value(3) * p_%value(1) - this%value(1) * p_%value(3)
                    res%value(3) = this%value(1) * p_%value(2) - this%value(2) * p_%value(1)
                else
                    print *, "Error, dimension of the vectors does not match."
                end if
        end function cross_product_vector ! }}}

        subroutine write_formatted_vector(this, Unit, IOType, argList, IOStatus, IOMessage) ! {{{
            implicit none
            class(vector), intent(in) :: this
            integer, intent(in) :: Unit
            character(*), intent(in) :: IOType
            integer, intent(in) :: argList(:)
            integer, intent(out) :: IOStatus
            character(*), intent(inout) :: IOMessage

            character(2) :: width_tol, width_dec
            character(6) :: spec
            integer(kind=IT) :: j
            character(:), allocatable :: style

            if(IOType == "LISTDIRECTED" .or. size(argList) < 2)then
                write(unit=Unit, fmt = *, iostat = IOStatus, iomsg = IOMessage) this%value(:)
                IOStatus = 0
                return
            else
                write(width_tol,'(I2)') argList(1)
                write(width_dec,'(I2)') argList(2)
                spec = 'F'//width_tol//'.'//width_dec
                style = lt
                do j = 1, this%dim
                    style = style//space//spec
                end do
                style = style//rt

                write(unit = Unit, fmt = style, iostat = IOStatus, iomsg = IOMessage) this%value(:)
                IOStatus = 0
            end if
            return
        end subroutine write_formatted_vector ! }}}
! }}}

! procedures for vectorComplex {{{
        subroutine init_vectorComplex(this, n) ! {{{
            class(vectorComplex), intent(inout) :: this
            integer(kind=IT), intent(in) :: n
                this%dim = n
                allocate(this%value(1:n))
            return
        end subroutine init_vectorComplex ! }}}

        subroutine finalize_vectorComplex(this) ! {{{
            implicit none
            type(vectorComplex), intent(inout) :: this
                deallocate(this%value)
            return
        end subroutine finalize_vectorComplex ! }}}

        function conjg_vectorComplex(this) result(res) ! {{{
            implicit none
            class(vectorComplex), intent(in) :: this
            class(vectorComplex), allocatable:: res
                allocate(res)
                call res%init(this%dim)
                res%value(:) = conjg(this%value(:))
            return
        end function conjg_vectorComplex ! }}}

        function length_vectorComplex(this) result(res) ! {{{
            implicit none
            class(vectorComplex), intent(in) :: this
            real(kind=DP) :: res
            integer(kind=IT) :: i
                res = 0e0_DP
                do i = 1, this%dim
                    res = res + this%value(i)**2
                end do
            return
        end function length_vectorComplex ! }}}

        function length_vector_vectorComplex(this, v_) result(res) ! {{{
            implicit none
            class(vectorComplex), intent(in) :: this
            class(*), intent(in) :: v_
            real(kind=DP) :: res
            integer(kind=IT) :: i
                res = 0e0_DP
                select type(v_)
                    type is (vector)
                        if (this%dim == v_%dim) then
                            do i = 1, this%dim
                                res = res + (this%value(i) - v_%value(i))**2
                            end do
                        else
                            print *, "Error, dimension of the vectors does not match."
                        end if
                    type is (vectorComplex)
                        if (this%dim == v_%dim) then
                            do i = 1, this%dim
                                res = res + (this%value(i) - v_%value(i))**2
                            end do
                        else
                            print *, "Error, dimension of the vectors does not match."
                        end if
                end select
            return
        end function length_vector_vectorComplex ! }}}

        subroutine assign_vectorComplex(this, v_) ! {{{
            implicit none
            class(vectorComplex), intent(inout) :: this
            class(*), intent(in) :: v_
                select type (v_)
                    type is (real(kind=DP))
                        this%value(:) = v_
                    type is (complex(kind=DP))
                        this%value(:) = v_
                    type is (vector)
                        this%value(:) = v_%value(:)
                    type is (vectorComplex)
                        this%value(:) = v_%value(:)
                end select
            return
        end subroutine assign_vectorComplex ! }}}

        subroutine assign_vector_vectorComplex(this, v_) ! {{{
            implicit none
            class(vectorComplex), intent(inout) :: this
            class(*), intent(in) :: v_(:)
                if (this%dim == size(v_)) then
                    select type (v_)
                        type is (real(kind=DP))
                            this%value(:) = v_(:)
                        type is (complex(kind=DP))
                            this%value(:) = v_(:)
                    end select
                else
                    print *, "Error, dimension of the vectors does not match."
                end if
            return
        end subroutine assign_vector_vectorComplex ! }}}

        function add_vectorComplex(this, p_) result(res) ! {{{
            implicit none
            class(vectorComplex), intent(in) :: this
            class(*), intent(in) :: p_
            class(vectorComplex), allocatable:: res
            integer(kind=IT) :: i
                allocate(res)
                call res%init(this%dim)
                select type(p_)
                    type is (vector)
                        if (this%dim == p_%dim) then
                            res%value(:) = this%value(:) + p_%value(:)
                        else
                            print *, "Error, dimension of the vectors does not match."
                        end if
                    type is (vectorComplex)
                        if (this%dim == p_%dim) then
                            res%value(:) = this%value(:) + p_%value(:)
                        else
                            print *, "Error, dimension of the vectors does not match."
                        end if
                end select
            return
        end function add_vectorComplex ! }}}

        function add2_vectorComplex(p_, this) result(res) ! {{{
            implicit none
            class(*), intent(in) :: p_
            class(vectorComplex), intent(in) :: this
            class(vectorComplex), allocatable:: res
            integer(kind=IT) :: i
                allocate(res)
                call res%init(this%dim)
                select type(p_)
                    type is (vector)
                        if (this%dim == p_%dim) then
                            res%value(:) = p_%value(:) + this%value(:)
                        else
                            print *, "Error, dimension of the vectors does not match."
                        end if
                    type is (vectorComplex)
                        if (this%dim == p_%dim) then
                            res%value(:) = p_%value(:) + this%value(:)
                        else
                            print *, "Error, dimension of the vectors does not match."
                        end if
                end select
            return
        end function add2_vectorComplex ! }}}

        function minus_vectorComplex(this, p_) result(res) ! {{{
            implicit none
            class(vectorComplex), intent(in) :: this
            class(*), intent(in) :: p_
            class(vectorComplex), allocatable:: res
            integer(kind=IT) :: i
                allocate(res)
                call res%init(this%dim)
                select type(p_)
                    type is (vector)
                        if (this%dim == p_%dim) then
                            res%value(:) = this%value(:) - p_%value(:)
                        else
                            print *, "Error, dimension of the vectors does not match."
                        end if
                    type is (vectorComplex)
                        if (this%dim == p_%dim) then
                            res%value(:) = this%value(:) - p_%value(:)
                        else
                            print *, "Error, dimension of the vectors does not match."
                        end if
                end select
            return
        end function minus_vectorComplex ! }}}

        function minus2_vectorComplex(p_, this) result(res) ! {{{
            implicit none
            class(*), intent(in) :: p_
            class(vectorComplex), intent(in) :: this
            class(vectorComplex), allocatable:: res
            integer(kind=IT) :: i
                allocate(res)
                call res%init(this%dim)
                select type(p_)
                    type is (vector)
                        if (this%dim == p_%dim) then
                            res%value(:) = p_%value(:) - this%value(:)
                        else
                            print *, "Error, dimension of the vectors does not match."
                        end if
                    type is (vectorComplex)
                        if (this%dim == p_%dim) then
                            res%value(:) = p_%value(:) - this%value(:)
                        else
                            print *, "Error, dimension of the vectors does not match."
                        end if
                end select
            return
        end function minus2_vectorComplex ! }}}

        function multiply_vectorComplex(this, p_) result(res) ! {{{
            implicit none
            class(vectorComplex), intent(in) :: this
            CLASS(*), intent(in) :: p_
            class(vectorComplex), allocatable :: res
                allocate(res)
                call res%init(this%dim)
                select type(p_)
                    type is (real(kind=DP))
                        res%value(:) = this%value(:) * p_
                    type is (complex(kind=DP))
                        res%value(:) = this%value(:) * p_
                end select
            return
        end function multiply_vectorComplex ! }}}

        function multiply2_vectorComplex(p_, this) result(res) ! {{{
            implicit none
            class(vectorComplex), intent(in) :: this
            CLASS(*), intent(in) :: p_
            class(vectorComplex), allocatable :: res
                allocate(res)
                call res%init(this%dim)
                select type(p_)
                    type is (real(kind=DP))
                        res%value(:) = p_ * this%value(:)
                    type is (complex(kind=DP))
                        res%value(:) = p_ * this%value(:)
                end select
            return
        end function multiply2_vectorComplex ! }}}

        function divide_vectorComplex(this, p_) result(res) ! {{{
            implicit none
            class(vectorComplex), intent(in) :: this
            CLASS(*), intent(in) :: p_
            class(vectorComplex), allocatable :: res
                allocate(res)
                call res%init(this%dim)
                select type(p_)
                    type is (real(kind=DP))
                        res%value(:) = this%value(:) / p_
                    type is (complex(kind=DP))
                        res%value(:) = this%value(:) / p_
                end select
            return
        end function divide_vectorComplex ! }}}

        function dot_product_vectorComplex(this, p_) result(res) ! {{{
            implicit none
            class(vectorComplex), intent(in) :: this
            class(vectorComplex), intent(in) :: p_
            real(kind=DP) :: res
                if (this%dim == p_%dim) then
                    res = dot_product(this%value(:), p_%value(:))
                else
                    print *, "Error, dimension of the vectors does not match."
                end if
        end function dot_product_vectorComplex ! }}}

        function cross_product_vectorComplex(this, p_) result(res) ! {{{
            implicit none
            class(vectorComplex), intent(in) :: this
            class(vectorComplex), intent(in) :: p_
            class(vectorComplex), allocatable :: res
                allocate(res)
                call res%init(this%dim)
                if ((this%dim == p_%dim) .and. (this%dim == 3_IT)) then
                    res%value(1) = this%value(2) * p_%value(3) - this%value(3) * p_%value(2)
                    res%value(2) = this%value(3) * p_%value(1) - this%value(1) * p_%value(3)
                    res%value(3) = this%value(1) * p_%value(2) - this%value(2) * p_%value(1)
                else
                    print *, "Error, dimension of the vectors does not match."
                end if
        end function cross_product_vectorComplex ! }}}

        subroutine write_formatted_vectorComplex(this,unit,iotype,vlist,iostat,iomsg) ! {{{
            implicit none
            class(vectorComplex), intent(in) :: this
            integer,intent(in) :: unit
            character(*),intent(in) :: iotype
            integer,intent(in) :: vlist(:)
            integer,intent(out) :: iostat
            character(*),intent(inout) :: iomsg

            integer(kind=IT) :: j
            character(:), allocatable :: style

                style = lt
                do j = 1, this%dim
                    style = style//space//Dzform1
                end do
                style = style//rt

                write(unit, style), this%value(:)

                iostat = 0
            return
        end subroutine write_formatted_vectorComplex ! }}}
! }}}
end module modVector ! }}}
module modMatrix ! {{{
!  this module uses
!   LAPACK: zgetrf, zgetri
!
    use precisions
    use formats
    type :: matrix ! {{{
        integer(kind=IT) :: dim
        real(kind=DP), allocatable :: value(:,:)
        contains
        procedure, pass :: init => init_matrix
        procedure, pass :: inverse => inverse_matrix
        procedure, pass :: transverse => transverse_matrix
        procedure, pass :: trace => trace_matrix
        procedure, pass :: toArray => convert_toArray_matrix
        procedure, pass :: fromArray => convert_fromArray_matrix

        procedure, pass :: write_formatted_matrix

        procedure, pass :: assign_matrix
        procedure, pass :: assign_array_matrix
        procedure, pass :: assign_matrix_matrix
        procedure, pass :: add_matrix
        procedure, pass(this) :: add2_matrix
        procedure, pass :: minus_matrix
        procedure, pass(this) :: minus2_matrix
        procedure, pass :: multiply_matrix
        procedure, pass(this) :: multiply2_matrix
        procedure, pass :: divide_matrix
        procedure, pass(this) :: divide2_matrix
        generic :: assignment(=) => assign_matrix, assign_array_matrix, assign_matrix_matrix
        generic :: operator(+) => add_matrix, add2_matrix
        generic :: operator(-) => minus_matrix, minus2_matrix
        generic :: operator(*) => multiply_matrix, multiply2_matrix
        generic :: operator(/) => divide_matrix, divide2_matrix

        generic :: write(formatted) => write_formatted_matrix
        final :: finalize_matrix
    end type matrix ! }}}
    type :: matrixComplex ! {{{
        integer(kind=IT) :: dim
        complex(kind=DP), allocatable :: value(:,:)
        contains
        procedure, pass :: init => init_matrixComplex
        procedure, pass :: inverse => inverse_matrixComplex
        procedure, pass :: trace => trace_matrixComplex
        procedure, pass :: conjg => conjg_matrixComplex
        procedure, pass :: toArray => convert_toArray_matrixComplex
        procedure, pass :: fromArray => convert_fromArray_matrixComplex
        procedure, pass :: diagonalize_N => diagonalize_N_matrixComplex
        procedure, pass :: diagonalize_V => diagonalize_V_matrixComplex

        procedure, pass :: write_formatted_matrixComplex

        procedure, pass :: assign_matrixComplex
        procedure, pass :: assign_array_matrixComplex
        procedure, pass :: assign_matrix_matrixComplex
        procedure, pass :: add_matrixComplex
        procedure, pass(this) :: add2_matrixComplex
        procedure, pass :: minus_matrixComplex
        procedure, pass(this) :: minus2_matrixComplex
        procedure, pass :: multiply_matrixComplex
        procedure, pass(this) :: multiply2_matrixComplex
        procedure, pass :: divide_matrixComplex
        procedure, pass(this) :: divide2_matrixComplex
        generic :: assignment(=) => assign_matrixComplex, assign_array_matrixComplex, assign_matrix_matrixComplex
        generic :: operator(+) => add_matrixComplex, add2_matrixComplex
        generic :: operator(-) => minus_matrixComplex, minus2_matrixComplex
        generic :: operator(*) => multiply_matrixComplex, multiply2_matrixComplex
        generic :: operator(/) => divide_matrixComplex, divide2_matrixComplex
        generic :: write(formatted) => write_formatted_matrixComplex
        final :: finalize_matrixComplex
    end type matrixComplex ! }}}
    contains
! procedures for matrix {{{
        subroutine init_matrix(this, n) ! {{{
            class(matrix), intent(inout) :: this
            integer(kind=IT), intent(in) :: n
                this%dim = n
                allocate(this%value(1:n,1:n))
            return
        end subroutine init_matrix ! }}}

        subroutine finalize_matrix(this) ! {{{
            implicit none
            type(matrix), intent(inout) :: this
                deallocate(this%value)
            return
        end subroutine finalize_matrix ! }}}

        subroutine assign_matrix(this, m_) ! {{{
            implicit none
            class(matrix), intent(inout) :: this
            class(*), intent(in) :: m_
                select type (m_)
                    type is (real(kind=DP))
                        this%value(:,:) = m_
                    type is (complex(kind=DP))
                        this%value(:,:) = m_
                    type is (matrix)
                        this%value(:,:) = m_%value(:,:)
                end select
            return
        end subroutine assign_matrix ! }}}

        subroutine assign_array_matrix(this, m_) ! {{{
            implicit none
            class(matrix), intent(inout) :: this
            class(*), intent(in) :: m_(:)
                select type (m_)
                    type is (real(kind=DP))
                        this%value(:,:) = reshape(m_, shape(this%value))
                end select
            return
        end subroutine assign_array_matrix ! }}}

        subroutine assign_matrix_matrix(this, m_) ! {{{
            implicit none
            class(matrix), intent(inout) :: this
            class(*), intent(in) :: m_(:,:)
                select type (m_)
                    type is (real(kind=DP))
                        this%value(:,:) = m_(:,:)
                end select
            return
        end subroutine assign_matrix_matrix ! }}}

        function inverse_matrix(this) result (res) ! {{{
            implicit none
            class(matrix), intent(in) :: this
            class(matrix), allocatable :: res
            integer(4) :: info
            integer(4) :: lda
            real(kind=DP) :: work(64*this%dim)
            real(kind=DP) :: A(this%dim,this%dim)
            integer(4) :: ipiv(this%dim)
                lda = this%dim
                allocate(res)
                call res%init(this%dim)
                A(:,:) = this%value(:,:)
                call dgetrf(this%dim, this%dim, A, lda, ipiv, info)
                if (info == 0) then
                    call dgetri(this%dim, A, this%dim, ipiv, work, lda, info)
                    res%value(:,:) = A(:,:)
                else
                    call error_header("info is not zero", .true., .true.)
                end if
            return
        end function inverse_matrix ! }}}

        function trace_matrix(this) result (res) ! {{{
            implicit none
            class(matrix), intent(in) :: this
            complex(kind=DP), allocatable :: res
            integer(kind=IT) :: i
                allocate(res)
                do i = 1, this%dim
                    res = res + this%value(i,i)
                end do
            return
        end function trace_matrix ! }}}

        function transverse_matrix(this) result (res) ! {{{
            implicit none
            class(matrix), intent(in) :: this
            class(matrix), allocatable :: res
            integer(kind=IT) :: i, j
                allocate(res)
                call res%init(this%dim)
                do i = 1, this%dim
                    do j = 1, this%dim
                        res%value(j,i) = this%value(i,j)
                    end do
                end do
            return
        end function transverse_matrix ! }}}

        subroutine convert_toArray_matrix(this, res) ! {{{
            implicit none
            class(matrix), intent(in) :: this
            real(kind=DP), intent(out) :: res(1:this%dim*this%dim)
                res(:) = reshape(this%value(:,:), shape(res))
            return
        end subroutine convert_toArray_matrix ! }}}

        subroutine convert_fromArray_matrix(this, res) ! {{{
            implicit none
            class(matrix), intent(inout) :: this
            real(kind=DP), intent(in) :: res(1:this%dim*this%dim)
                this%value(:,:) = reshape(res(:), shape(this%value))
            return
        end subroutine convert_fromArray_matrix ! }}}

        function add_matrix(this, p_) result(res) ! {{{
            implicit none
            class(matrix), intent(in) :: this
            class(*), intent(in) :: p_
            class(matrix), allocatable:: res
            integer(kind=IT) :: i
                allocate(res)
                call res%init(this%dim)
                select type (p_)
                    type is (real(kind=DP))
                        res%value(:,:) = this%value(:,:)
                        do i = 1, this%dim
                            res%value(i,i) = res%value(i,i) + p_
                        end do
                    type is (matrix)
                        res%value(:,:) = this%value(:,:) + p_%value(:,:)
                end select
            return
        end function add_matrix ! }}}

        function add2_matrix(p_, this) result(res) ! {{{
            implicit none
            class(matrix), intent(in) :: this
            class(*), intent(in) :: p_
            class(matrix), allocatable:: res
            integer(kind=IT) :: i
                allocate(res)
                call res%init(this%dim)
                select type (p_)
                    type is (real(kind=DP))
                        res%value(:,:) = this%value(:,:)
                        do i = 1, this%dim
                            res%value(i,i) = res%value(i,i) + p_
                        end do
                    type is (matrix)
                        res%value(:,:) = this%value(:,:) + p_%value(:,:)
                end select
            return
        end function add2_matrix ! }}}

        function minus_matrix(this, p_) result(res) ! {{{
            implicit none
            class(matrix), intent(in) :: this
            class(*), intent(in) :: p_
            class(matrix), allocatable:: res
            integer(kind=IT) :: i
                allocate(res)
                call res%init(this%dim)
                select type (p_)
                    type is (real(kind=DP))
                        res%value(:,:) = this%value(:,:)
                        do i = 1, this%dim
                            res%value(i,i) = res%value(i,i) - p_
                        end do
                    type is (matrix)
                        res%value(:,:) = this%value(:,:) - p_%value(:,:)
                end select
            return
        end function minus_matrix ! }}}

        function minus2_matrix(p_, this) result(res) ! {{{
            implicit none
            class(matrix), intent(in) :: this
            class(*), intent(in) :: p_
            class(matrix), allocatable:: res
            integer(kind=IT) :: i
                allocate(res)
                call res%init(this%dim)
                select type (p_)
                    type is (real(kind=DP))
                        res%value(:,:) = this%value(:,:)
                        do i = 1, this%dim
                            res%value(i,i) = p_ - res%value(i,i)
                        end do
                    type is (matrix)
                        res%value(:,:) = p_%value(:,:) - this%value(:,:)
                end select
            return
        end function minus2_matrix ! }}}

        function multiply_matrix(this, p_) result(res) ! {{{
            implicit none
            class(matrix), intent(in) :: this
            CLASS(*), intent(in) :: p_
            class(matrix), allocatable :: res
                allocate(res)
                call res%init(this%dim)
                select type(p_)
                    type is (real(kind=DP))
                        res%value(:,:) = this%value(:,:) * p_
                    type is (matrix)
                        res%value(:,:) = matmul(this%value(:,:), p_%value(:,:))
                end select
            return
        end function multiply_matrix ! }}}

        function multiply2_matrix(p_, this) result(res) ! {{{
            implicit none
            class(matrix), intent(in) :: this
            CLASS(*), intent(in) :: p_
            class(matrix), allocatable :: res
                allocate(res)
                call res%init(this%dim)
                select type(p_)
                    type is (real(kind=DP))
                        res%value(:,:) = p_ * this%value(:,:)
                    type is (matrix)
                        res%value(:,:) = matmul(p_%value(:,:), this%value(:,:))
                end select
            return
        end function multiply2_matrix ! }}}

        function divide_matrix(this, p_) result(res) ! {{{
            implicit none
            class(matrix), intent(in) :: this
            CLASS(*), intent(in) :: p_
            class(matrix), allocatable :: res
                allocate(res)
                call res%init(this%dim)
                select type(p_)
                    type is (real(kind=DP))
                        res%value(:,:) = this%value(:,:) / p_
                    type is (matrix)
                        res = p_%inverse()
                        res%value(:,:) = this%value(:,:) * res%value(:,:)
                end select
            return
        end function divide_matrix ! }}}

        function divide2_matrix(p_, this) result(res) ! {{{
            implicit none
            class(matrix), intent(in) :: this
            CLASS(*), intent(in) :: p_
            class(matrix), allocatable :: res
                allocate(res)
                call res%init(this%dim)
                res = this%inverse()
                select type(p_)
                    type is (real(kind=DP))
                        res%value(:,:) = p_ * res%value(:,:)
                    type is (matrix)
                        res%value(:,:) = p_%value(:,:) * res%value(:,:)
                end select
            return
        end function divide2_matrix ! }}}

        subroutine write_formatted_matrix(this, Unit, IOType, argList, IOStatus, IOMessage) ! {{{
            implicit none
            class(matrix), intent(in) :: this
            integer, intent(in) :: Unit
            character(*), intent(in) :: IOType
            integer, intent(in) :: argList(:)
            integer, intent(out) :: IOStatus
            character(*), intent(inout) :: IOMessage

            character(2) :: width_tol, width_dec
            character(6) :: spec
            integer(kind=IT) :: j
            character(:), allocatable :: style

            if(IOType == "LISTDIRECTED" .or. size(argList) < 2)then
                do j = 1, this%dim
                    write(unit=Unit, fmt = *, iostat = IOStatus, iomsg = IOMessage) this%value(:,j)
                end do
                IOStatus = 0
                return
            else
                write(width_tol,'(I2)') argList(1)
                write(width_dec,'(I2)') argList(2)
                spec = 'F'//width_tol//'.'//width_dec
                style = lt
                do j = 1, this%dim
                    style = style//space//spec
                end do
                style = style//rt

                do j = 1, this%dim
                    write(unit = Unit, fmt = style, iostat = IOStatus, iomsg = IOMessage) this%value(:,j)
                end do
                IOStatus = 0
            end if
            return
        end subroutine write_formatted_matrix ! }}}
! }}}

! procedures for matrixComplex {{{
        subroutine init_matrixComplex(this, n) ! {{{
            class(matrixComplex), intent(inout) :: this
            integer(kind=IT), intent(in) :: n
                this%dim = n
                allocate(this%value(1:n,1:n))
            return
        end subroutine init_matrixComplex ! }}}

        subroutine finalize_matrixComplex(this) ! {{{
            implicit none
            type(matrixComplex), intent(inout) :: this
                deallocate(this%value)
            return
        end subroutine finalize_matrixComplex ! }}}

        subroutine assign_matrixComplex(this, m_) ! {{{
            implicit none
            class(matrixComplex), intent(inout) :: this
            class(*), intent(in) :: m_
                select type (m_)
                    type is (real(kind=DP))
                        this%value(:,:) = m_
                    type is (complex(kind=DP))
                        this%value(:,:) = m_
                    type is (matrixComplex)
                        this%value(:,:) = m_%value(:,:)
                end select
            return
        end subroutine assign_matrixComplex ! }}}

        subroutine assign_array_matrixComplex(this, m_) ! {{{
            implicit none
            class(matrixComplex), intent(inout) :: this
            class(*), intent(in) :: m_(:)
                select type (m_)
                    type is (real(kind=DP))
                        this%value(:,:) = reshape(m_, shape(this%value))
                    type is (complex(kind=DP))
                        this%value(:,:) = reshape(m_, shape(this%value))
                end select
            return
        end subroutine assign_array_matrixComplex ! }}}

        subroutine assign_matrix_matrixComplex(this, m_) ! {{{
            implicit none
            class(matrixComplex), intent(inout) :: this
            class(*), intent(in) :: m_(:,:)
                select type (m_)
                    type is (real(kind=DP))
                        this%value(:,:) = m_(:,:)
                    type is (complex(kind=DP))
                        this%value(:,:) = m_(:,:)
                end select
            return
        end subroutine assign_matrix_matrixComplex ! }}}

        function inverse_matrixComplex(this) result (res) ! {{{
            implicit none
            class(matrixComplex), intent(in) :: this
            class(matrixComplex), allocatable :: res
            integer(4) :: info
            integer(4) :: lda
            complex(kind=DP) :: work(64*this%dim)
            complex(kind=DP) :: A(this%dim,this%dim)
            integer(4) :: ipiv(this%dim)
                lda = this%dim
                allocate(res)
                call res%init(this%dim)
                A(:,:) = this%value(:,:)
                call zgetrf(this%dim, this%dim, A, lda, ipiv, info)
                if (info == 0) then
                    call zgetri(this%dim, A, this%dim, ipiv, work, lda, info)
                    res%value(:,:) = A(:,:)
                else
                    call error_header("info is not zero", .true., .true.)
                end if
            return
        end function inverse_matrixComplex ! }}}

        function trace_matrixComplex(this) result (res) ! {{{
            implicit none
            class(matrixComplex), intent(in) :: this
            complex(kind=DP), allocatable :: res
            integer(kind=IT) :: i
                allocate(res)
                do i = 1, this%dim
                    res = res + this%value(i,i)
                end do
            return
        end function trace_matrixComplex ! }}}

        function conjg_matrixComplex(this) result (res) ! {{{
            implicit none
            class(matrixComplex), intent(in) :: this
            class(matrixComplex), allocatable :: res
            integer(kind=IT) :: i, j
                allocate(res)
                call res%init(this%dim)
                do i = 1, this%dim
                    do j = 1, this%dim
                        res%value(j,i) = conjg(this%value(i,j))
                    end do
                end do
            return
        end function conjg_matrixComplex ! }}}

        subroutine convert_toArray_matrixComplex(this, res) ! {{{
            implicit none
            class(matrixComplex), intent(in) :: this
            complex(kind=DP), intent(out) :: res(1:this%dim*this%dim)
                res(:) = reshape(this%value(:,:), shape(res))
            return
        end subroutine convert_toArray_matrixComplex ! }}}

        subroutine convert_fromArray_matrixComplex(this, res) ! {{{
            implicit none
            class(matrixComplex), intent(inout) :: this
            complex(kind=DP), intent(in) :: res(1:this%dim*this%dim)
                this%value(:,:) = reshape(res(:), shape(this%value))
            return
        end subroutine convert_fromArray_matrixComplex ! }}}

        subroutine diagonalize_N_matrixComplex(this, EigenValue_) ! {{{
            implicit none
            class(matrixComplex), intent(in) :: this
            real(kind=DP), intent(out) :: EigenValue_(1:this%dim)
            complex(kind=DP) :: work(4*this%dim-1)
            integer(kind=IT) :: rwork(3*this%dim-2)

            integer(kind=IT) :: n, lwork
            integer(4) :: info
                n = ubound(this%value,1)
                lwork = 4*n - 1

                call zheev('N', 'L', n, this%value, n, EigenValue_, work, lwork, rwork, info)
                if (info .ne. 0) then
                    write(*,*) "error! in diagonalization info = ", info
                end if

            return
        end subroutine diagonalize_N_matrixComplex ! }}}

        subroutine diagonalize_V_matrixComplex(this, EigenValue_, EigenVector_) ! {{{
            implicit none
            class(matrixComplex), intent(in) :: this
            real(kind=DP), intent(out) :: EigenValue_(1:this%dim)
            class(matrixComplex), intent(out) :: EigenVector_
            complex(kind=DP) :: work(4*this%dim-1)
            integer(kind=IT) :: rwork(3*this%dim-2)

            integer(kind=IT) :: n, lwork
            integer(4) :: info
                n = ubound(this%value,1)
                lwork = 4*n - 1

                call EigenVector_%init(this%dim)
                EigenVector_ = this
                call zheev('V', 'L', n, EigenVector_%value, n, EigenValue_, work, lwork, rwork, info)

                if (info .ne. 0) then
                    write(*,*) "error! in diagonalization info = ", info
                end if

            return
        end subroutine diagonalize_V_matrixComplex ! }}}

        function add_matrixComplex(this, p_) result(res) ! {{{
            implicit none
            class(matrixComplex), intent(in) :: this
            class(*), intent(in) :: p_
            class(matrixComplex), allocatable:: res
            integer(kind=IT) :: i
                allocate(res)
                call res%init(this%dim)
                select type (p_)
                    type is (real(kind=DP))
                        res%value(:,:) = this%value(:,:)
                        do i = 1, this%dim
                            res%value(i,i) = res%value(i,i) + p_
                        end do
                    type is (complex(kind=DP))
                        res%value(:,:) = this%value(:,:)
                        do i = 1, this%dim
                            res%value(i,i) = res%value(i,i) + p_
                        end do
                    type is (matrixComplex)
                        res%value(:,:) = this%value(:,:) + p_%value(:,:)
                end select
            return
        end function add_matrixComplex ! }}}

        function add2_matrixComplex(p_, this) result(res) ! {{{
            implicit none
            class(matrixComplex), intent(in) :: this
            class(*), intent(in) :: p_
            class(matrixComplex), allocatable:: res
            integer(kind=IT) :: i
                allocate(res)
                call res%init(this%dim)
                select type (p_)
                    type is (real(kind=DP))
                        res%value(:,:) = this%value(:,:)
                        do i = 1, this%dim
                            res%value(i,i) = res%value(i,i) + p_
                        end do
                    type is (complex(kind=DP))
                        res%value(:,:) = this%value(:,:)
                        do i = 1, this%dim
                            res%value(i,i) = res%value(i,i) + p_
                        end do
                    type is (matrixComplex)
                        res%value(:,:) = this%value(:,:) + p_%value(:,:)
                end select
            return
        end function add2_matrixComplex ! }}}

        function minus_matrixComplex(this, p_) result(res) ! {{{
            implicit none
            class(matrixComplex), intent(in) :: this
            class(*), intent(in) :: p_
            class(matrixComplex), allocatable:: res
            integer(kind=IT) :: i
                allocate(res)
                call res%init(this%dim)
                select type (p_)
                    type is (real(kind=DP))
                        res%value(:,:) = this%value(:,:)
                        do i = 1, this%dim
                            res%value(i,i) = res%value(i,i) - p_
                        end do
                    type is (complex(kind=DP))
                        res%value(:,:) = this%value(:,:)
                        do i = 1, this%dim
                            res%value(i,i) = res%value(i,i) - p_
                        end do
                    type is (matrixComplex)
                        res%value(:,:) = this%value(:,:) - p_%value(:,:)
                end select
            return
        end function minus_matrixComplex ! }}}

        function minus2_matrixComplex(p_, this) result(res) ! {{{
            implicit none
            class(matrixComplex), intent(in) :: this
            class(*), intent(in) :: p_
            class(matrixComplex), allocatable:: res
            integer(kind=IT) :: i
                allocate(res)
                call res%init(this%dim)
                select type (p_)
                    type is (real(kind=DP))
                        res%value(:,:) = this%value(:,:)
                        do i = 1, this%dim
                            res%value(i,i) = p_ - res%value(i,i)
                        end do
                    type is (complex(kind=DP))
                        res%value(:,:) = this%value(:,:)
                        do i = 1, this%dim
                            res%value(i,i) = p_ - res%value(i,i)
                        end do
                    type is (matrixComplex)
                        res%value(:,:) = p_%value(:,:) - this%value(:,:)
                end select
            return
        end function minus2_matrixComplex ! }}}

        function multiply_matrixComplex(this, p_) result(res) ! {{{
            implicit none
            class(matrixComplex), intent(in) :: this
            CLASS(*), intent(in) :: p_
            class(matrixComplex), allocatable :: res
                allocate(res)
                call res%init(this%dim)
                select type(p_)
                    type is (real(kind=DP))
                        res%value(:,:) = this%value(:,:) * p_
                    type is (complex(kind=DP))
                        res%value(:,:) = this%value(:,:) * p_
                    type is (matrixComplex)
                        res%value(:,:) = matmul(this%value(:,:), p_%value(:,:))
                end select
            return
        end function multiply_matrixComplex ! }}}

        function multiply2_matrixComplex(p_, this) result(res) ! {{{
            implicit none
            class(matrixComplex), intent(in) :: this
            CLASS(*), intent(in) :: p_
            class(matrixComplex), allocatable :: res
                allocate(res)
                call res%init(this%dim)
                select type(p_)
                    type is (real(kind=DP))
                        res%value(:,:) = p_ * this%value(:,:)
                    type is (complex(kind=DP))
                        res%value(:,:) = p_ * this%value(:,:)
                    type is (matrixComplex)
                        res%value(:,:) = matmul(p_%value(:,:), this%value(:,:))
                end select
            return
        end function multiply2_matrixComplex ! }}}

        function divide_matrixComplex(this, p_) result(res) ! {{{
            implicit none
            class(matrixComplex), intent(in) :: this
            CLASS(*), intent(in) :: p_
            class(matrixComplex), allocatable :: res
                allocate(res)
                call res%init(this%dim)
                select type(p_)
                    type is (real(kind=DP))
                        res%value(:,:) = this%value(:,:) / p_
                    type is (complex(kind=DP))
                        res%value(:,:) = this%value(:,:) / p_
                    type is (matrixComplex)
                        res = p_%inverse()
                        res%value(:,:) = this%value(:,:) * res%value(:,:)
                end select
            return
        end function divide_matrixComplex ! }}}

        function divide2_matrixComplex(p_, this) result(res) ! {{{
            implicit none
            class(matrixComplex), intent(in) :: this
            CLASS(*), intent(in) :: p_
            class(matrixComplex), allocatable :: res
                allocate(res)
                call res%init(this%dim)
                res = this%inverse()
                select type(p_)
                    type is (real(kind=DP))
                        res%value(:,:) = p_ * res%value(:,:)
                    type is (complex(kind=DP))
                        res%value(:,:) = p_ * res%value(:,:)
                    type is (matrixComplex)
                        res%value(:,:) = p_%value(:,:) * res%value(:,:)
                end select
            return
        end function divide2_matrixComplex ! }}}

        subroutine write_formatted_matrixComplex(this, Unit, IOType, argList, IOStatus, IOMessage) ! {{{
            implicit none
            class(matrixComplex), intent(in) :: this
            integer, intent(in) :: Unit
            character(*), intent(in) :: IOType
            integer, intent(in) :: argList(:)
            integer, intent(out) :: IOStatus
            character(*), intent(inout) :: IOMessage

            character(2) :: width_tol, width_dec
            character(6) :: spec
            integer(kind=IT) :: j
            character(:), allocatable :: style

            if(IOType == "LISTDIRECTED" .or. size(argList) < 2)then
                style = lt
                do j = 1, this%dim
                    style = style//space//Dzform1
                end do
                style = style//rt
                do j = 1, this%dim
                    write(unit=Unit, fmt = style, iostat = IOStatus, iomsg = IOMessage) real(this%value(:,j)), aimag(this%value(:,j))
                end do
                IOStatus = 0
                return
            else
                write(width_tol,'(I2)') argList(1)
                write(width_dec,'(I2)') argList(2)
                spec = 'F'//width_tol//'.'//width_dec
                style = lt
                do j = 1, this%dim
                    style = style//space//spec//space//spec
                end do
                style = style//rt

                do j = 1, this%dim
                    write(unit = Unit, fmt = style, iostat = IOStatus, iomsg = IOMessage) real(this%value(:,j)), aimag(this%value(:,j))
                end do
                IOStatus = 0
            end if
            return
        end subroutine write_formatted_matrixComplex ! }}}
! }}}
end module modMatrix ! }}}
module modSection !{{{
    use precisions
    use formats
    implicit none
    type, abstract, public :: abstractSection !{{{
        real(kind=DP), private :: frst
        real(kind=DP), private :: last
        integer(kind=IT), public :: mesh
        real(kind=IT), public :: curr = 0e0_DP
        real(kind=DP), public :: step = 0e0_DP

        integer(kind=IT), private :: order = 0
        contains
            procedure(set_abstractSection ), deferred :: set
            procedure(show_abstractSection), deferred :: show
    end type abstractSection

    abstract interface
        subroutine set_abstractSection(this, i_current)
            use precisions
            import :: abstractSection
            class(abstractSection), intent(inout) :: this
            integer(kind=IT), intent(in) :: i_current
        end subroutine set_abstractSection

        subroutine show_abstractSection(this, i_current)
            use precisions
            import :: abstractSection
            class(abstractSection), intent(inout) :: this
            integer(kind=IT), intent(in), optional :: i_current
        end subroutine show_abstractSection
    end interface !}}}

    type, extends(abstractSection) :: Section !{{{
        real(kind=DP) :: power = 0e0_DP
        contains
            procedure, pass :: set  => set_Section
            procedure, pass :: show => show_Section
    end type Section

    interface Section
        module procedure init_Section
    end interface Section !}}}

    type, extends(Section) :: Sec1D !{{{
        type(Section), pointer :: x => null()

        type(Sec1D), pointer :: another_Sec1D => null()
        contains
            final :: finalize_Sec1D
    end type Sec1D

    interface Sec1D
        module procedure init_Sec1D_origin_length
    end interface Sec1D !}}}

    type :: Sec2D !{{{
        type(Section) :: Section(1:2)
        type(Section), pointer :: x => null()
        type(Section), pointer :: y => null()

        type(Sec2D), pointer :: another_Sec2D => null()
        contains
            final :: finalize_Sec2D
    end type Sec2D

    interface Sec2D
        module procedure init_Sec2D_symmetric_xyz, init_Sec2D_center_volume_xyz, init_Sec2D_origin_volume_xyz
    end interface Sec2D !}}}

    type :: Sec3D !{{{
        type(Section) :: Section(1:3)
        type(Section), pointer :: x => null()
        type(Section), pointer :: y => null()
        type(Section), pointer :: z => null()

        type(Sec3D), pointer :: another_Sec3D => null()
        contains
            final :: finalize_Sec3D
    end type Sec3D

    interface Sec3D
        module procedure init_Sec3D_symmetric_xyz, init_Sec3D_center_volume_xyz, init_Sec3D_origin_volume_xyz
    end interface Sec3D !}}}
    contains
         function init_Section(frst, last, mesh,  power) result (this) !{{{
            class(Section), pointer :: this
            real(kind=DP), intent(in) :: frst
            real(kind=DP), intent(in) :: last
            integer(kind=IT), intent(in) :: mesh
            real(kind=DP), intent(in), optional :: power
                allocate(this)
                this%frst = frst
                this%last = last
                this%mesh = mesh
                this%step = (last - frst) / real(mesh+0e0_DP)
                this%order= int(log10(real(this%mesh+0e0_DP))) + 1
                if (present(power)) this%power = power
            return
        end function init_Section !}}}

        subroutine set_Section(this, i_current)!{{{
            class(Section), intent(inout) :: this
            integer(kind=IT), intent(in) :: i_current
                if (this%power == 0e0_DP) then
                    this%curr = this%frst + this%step * real(i_current+0e0_DP)
                else
                end if
            return
        end subroutine set_Section!}}}

        subroutine show_Section(this, i_current)!{{{
            class(Section), intent(inout) :: this
            integer(kind=IT), intent(in), optional :: i_current
            character(5) :: order
                if ( present(i_current) ) then
                    write(order,lt//'"i", i0'//rt) this%order
                    print *, HR
                    print lt//'"|| i_curr = ", '//order//',", curr = "'//peform1//rt, i_current, this%curr
                else
                    call header('SHOW configuration')
                    print lt//'" | mesh  = "'//Diform1//rt,  this%mesh
                    print lt//'" | first = "'//Dpeform1//rt, this%frst
                    print lt//'" | last  = "'//Dpeform1//rt, this%last
                    print lt//'" | step  = "'//Dpeform1//rt, this%step
                    print *, HR
                end if
            return
        end subroutine show_Section!}}}

        function init_Sec1D_origin_length(origin, length, mesh, power) result (this) !{{{
            class(Sec1D), pointer :: this
            real(kind=DP), intent(in) :: origin
            real(kind=DP), intent(in) :: length
            integer(kind=IT), intent(in) :: mesh
            real(kind=DP), intent(in), optional :: power
            real(kind=DP) :: p = 0e0_DP
            real(kind=DP) :: frst, last
                allocate(this)
                if (present(power)) p = power
                frst = origin
                last = origin + length
                this%Section = Section(frst, last, mesh, p)
                this%x => this%Section
            return
        end function init_Sec1D_origin_length !}}}

        function init_Sec2D_symmetric_xyz(frst, last, mesh, power) result (this) !{{{
            integer(kind=IT), parameter :: n = 2
            class(Sec2D), pointer :: this
            real(kind=DP), intent(in) :: frst
            real(kind=DP), intent(in) :: last
            integer(kind=IT), intent(in) :: mesh
            real(kind=DP), intent(in), optional :: power
            integer(kind=IT) :: i
            real(kind=DP) :: p = 0e0_DP
                allocate(this)
                if (present(power)) p = power
                do i = 1, n
                    this%Section(i) = Section(frst, last, mesh, p)
                end do
                this%x => this%Section(1)
                this%y => this%Section(2)
        end function init_Sec2D_symmetric_xyz !}}}

        function init_Sec2D_center_volume_xyz(center, length, mesh) result (this) !{{{
            integer(kind=IT), parameter :: n = 2
            class(Sec2D), pointer :: this
            real(kind=DP), intent(in) :: center(1:n)
            real(kind=DP), intent(in) :: length
            integer(kind=IT), intent(in) :: mesh
            integer(kind=IT) :: i
            real(kind=DP) :: p = 0e0_DP
            real(kind=DP) :: frst(1:n), last(1:n)
                allocate(this)
                do i = 1, n
                    frst(i) = center(i) - length
                    last(i) = center(i) + length
                    this%Section(i) = Section(frst(i), last(i), mesh, p)
                end do
                this%x => this%Section(1)
                this%y => this%Section(2)
        end function init_Sec2D_center_volume_xyz !}}}

        function init_Sec2D_origin_volume_xyz(origin, length, mesh, power) result (this) !{{{
            integer(kind=IT), parameter :: n = 2
            class(Sec2D), pointer :: this
            real(kind=DP), intent(in) :: origin(1:n)
            real(kind=DP), intent(in) :: length(1:n)
            integer(kind=IT), intent(in) :: mesh
            real(kind=DP), intent(in), optional :: power
            integer(kind=IT) :: i
            real(kind=DP) :: p = 0e0_DP
            real(kind=DP) :: frst(1:n), last(1:n)
                allocate(this)
                if (present(power)) p = power
                do i = 1, n
                    frst(i) = origin(i)
                    last(i) = origin(i) + length(i)
                    this%Section(i) = Section(frst(i), last(i), mesh, p)
                end do
                this%x => this%Section(1)
                this%y => this%Section(2)
        end function init_Sec2D_origin_volume_xyz !}}}

        function init_Sec3D_symmetric_xyz(frst, last, mesh, power) result (this) !{{{
            integer(kind=IT), parameter :: n = 3
            class(Sec3D), pointer :: this
            real(kind=DP), intent(in) :: frst
            real(kind=DP), intent(in) :: last
            integer(kind=IT), intent(in) :: mesh
            real(kind=DP), intent(in), optional :: power
            integer(kind=IT) :: i
            real(kind=DP) :: p = 0e0_DP
                allocate(this)
                if (present(power)) p = power
                do i = 1, n
                    this%Section(i) = Section(frst, last, mesh, p)
                end do
                this%x => this%Section(1)
                this%y => this%Section(2)
                this%z => this%Section(3)
        end function init_Sec3D_symmetric_xyz !}}}

        function init_Sec3D_center_volume_xyz(center, length, mesh) result (this) !{{{
            integer(kind=IT), parameter :: n = 3
            class(Sec3D), pointer :: this
            real(kind=DP), intent(in) :: center(1:n)
            real(kind=DP), intent(in) :: length
            integer(kind=IT), intent(in) :: mesh
            integer(kind=IT) :: i
            real(kind=DP) :: p = 0e0_DP
            real(kind=DP) :: frst(1:n), last(1:n)
                allocate(this)
                do i = 1, n
                    frst(i) = center(i) - length
                    last(i) = center(i) + length
                    this%Section(i) = Section(frst(i), last(i), mesh, p)
                end do
                this%x => this%Section(1)
                this%y => this%Section(2)
                this%z => this%Section(3)
        end function init_Sec3D_center_volume_xyz !}}}

        function init_Sec3D_origin_volume_xyz(origin, length, mesh, power) result (this) !{{{
            integer(kind=IT), parameter :: n = 3
            class(Sec3D), pointer :: this
            real(kind=DP), intent(in) :: origin(1:n)
            real(kind=DP), intent(in) :: length(1:n)
            integer(kind=IT), intent(in) :: mesh
            real(kind=DP), intent(in), optional :: power
            integer(kind=IT) :: i
            real(kind=DP) :: p = 0e0_DP
            real(kind=DP) :: frst(1:n), last(1:n)
                allocate(this)
                if (present(power)) p = power
                do i = 1, n
                    frst(i) = origin(i)
                    last(i) = origin(i) + length(i)
                    this%Section(i) = Section(frst(i), last(i), mesh, p)
                end do
                this%x => this%Section(1)
                this%y => this%Section(2)
                this%z => this%Section(3)
        end function init_Sec3D_origin_volume_xyz !}}}

        subroutine finalize_Sec1D(this) !{{{
            type(Sec1D), intent(inout) :: this
                nullify(this%x)
                if(associated(this%another_Sec1D)) deallocate(this%another_Sec1D)
            return
        end subroutine finalize_Sec1D !}}}

        subroutine finalize_Sec2D(this) !{{{
            type(Sec2D), intent(inout) :: this
                nullify(this%x)
                nullify(this%y)
                if(associated(this%another_Sec2D)) deallocate(this%another_Sec2D)
            return
        end subroutine finalize_Sec2D !}}}

        subroutine finalize_Sec3D(this) !{{{
            type(Sec3D), intent(inout) :: this
                nullify(this%x)
                nullify(this%y)
                nullify(this%z)
                if(associated(this%another_Sec3D)) deallocate(this%another_Sec3D)
            return
        end subroutine finalize_Sec3D !}}}

end module modSection !}}}
