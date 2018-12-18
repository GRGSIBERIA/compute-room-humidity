!  HUMIDITY_FORTRAN.f90 
!
!  関数:
!  HUMIDITY_FORTRAN - コンソール・アプリケーションのエントリーポイント。
!

!****************************************************************************
!
!  プログラム: HUMIDITY_FORTRAN
!
!  目的:  コンソール・アプリケーションのエントリーポイント。
!
!****************************************************************************

    program HUMIDITY_FORTRAN

    implicit none

    ! 変数
    integer read_mode
    real width, height, depth   ! 部屋の大きさ
    real volume                 ! 部屋の容積
    real temperature, humidity  ! 気温，湿度
    real atmospheric_pressure   ! 気圧
    real water_liter            ! 水の容量
    
    ! HUMIDITY_FORTRAN の本文
    print *, "部屋の大きさを指定します"
    print *, "1: 体積", "2: 幅奥行き高さ"
    read *, read_mode

    IF (read_mode == 1) THEN
        print *, "体積を指定してください (m^3)"
        read *, volume
    ELSE IF (read_mode == 2) THEN
        print *, "幅を指定してください (m)"
        read *, width
        print *, "奥行きを指定してください (m)"
        read *, depth
        print *, "高さを指定してください (m)"
        read *, height
    END IF

    end program HUMIDITY_FORTRAN

