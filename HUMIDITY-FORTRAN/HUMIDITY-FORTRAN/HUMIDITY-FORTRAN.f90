!  HUMIDITY_FORTRAN.f90 
!
!  �֐�:
!  HUMIDITY_FORTRAN - �R���\�[���E�A�v���P�[�V�����̃G���g���[�|�C���g�B
!

!****************************************************************************
!
!  �v���O����: HUMIDITY_FORTRAN
!
!  �ړI:  �R���\�[���E�A�v���P�[�V�����̃G���g���[�|�C���g�B
!
!****************************************************************************

    program HUMIDITY_FORTRAN

    implicit none

    ! �ϐ�
    integer read_mode
    real width, height, depth   ! �����̑傫��
    real volume                 ! �����̗e��
    real temperature, humidity  ! �C���C���x
    real atmospheric_pressure   ! �C��
    real water_liter            ! ���̗e��
    
    ! HUMIDITY_FORTRAN �̖{��
    print *, "�����̑傫�����w�肵�܂�"
    print *, "1: �̐�", "2: �����s������"
    read *, read_mode

    IF (read_mode == 1) THEN
        print *, "�̐ς��w�肵�Ă������� (m^3)"
        read *, volume
    ELSE IF (read_mode == 2) THEN
        print *, "�����w�肵�Ă������� (m)"
        read *, width
        print *, "���s�����w�肵�Ă������� (m)"
        read *, depth
        print *, "�������w�肵�Ă������� (m)"
        read *, height
    END IF

    end program HUMIDITY_FORTRAN

