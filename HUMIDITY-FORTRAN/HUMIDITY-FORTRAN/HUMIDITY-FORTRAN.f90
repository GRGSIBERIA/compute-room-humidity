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
        
        ! 
        print *, "部屋の大きさを指定します"
        print *, "1: 体積", "2: 幅奥行き高さ"
        read *, read_mode

        IF (read_mode == 1) THEN
100         print *, "体積を指定してください (m^3)"
            read *, volume
            IF (volume <= 0.0) THEN
                print *, "体積は0より大きい値を指定してください"
                GOTO 100
            END IF

        ELSE IF (read_mode == 2) THEN
101         print *, "幅を指定してください (m)"
            read *, width
            IF (width <= 0.0) THEN
                print *, "幅は0より大きい値を指定してください"
                GOTO 101
            END IF
102         print *, "奥行きを指定してください (m)"
            read *, depth
            IF (depth <= 0.0) THEN
                print *, "奥行きは0より大きい値を指定してください"
                GOTO 102
            END IF
103         print *, "高さを指定してください (m)"
            read *, height
            IF (height <= 0.0) THEN
                print *, "高さは0より大きい値を指定してください"
                GOTO 103
            END IF
            volume = width * depth * height
        END IF

    end program HUMIDITY_FORTRAN

