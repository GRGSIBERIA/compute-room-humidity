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
        
        ! 
        print *, "�����̑傫�����w�肵�܂�"
        print *, "1: �̐�", "2: �����s������"
        read *, read_mode

        IF (read_mode == 1) THEN
100         print *, "�̐ς��w�肵�Ă������� (m^3)"
            read *, volume
            IF (volume <= 0.0) THEN
                print *, "�̐ς�0���傫���l���w�肵�Ă�������"
                GOTO 100
            END IF

        ELSE IF (read_mode == 2) THEN
101         print *, "�����w�肵�Ă������� (m)"
            read *, width
            IF (width <= 0.0) THEN
                print *, "����0���傫���l���w�肵�Ă�������"
                GOTO 101
            END IF
102         print *, "���s�����w�肵�Ă������� (m)"
            read *, depth
            IF (depth <= 0.0) THEN
                print *, "���s����0���傫���l���w�肵�Ă�������"
                GOTO 102
            END IF
103         print *, "�������w�肵�Ă������� (m)"
            read *, height
            IF (height <= 0.0) THEN
                print *, "������0���傫���l���w�肵�Ă�������"
                GOTO 103
            END IF
            volume = width * depth * height
        END IF

    end program HUMIDITY_FORTRAN

