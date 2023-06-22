# RISC-V simple counter program
#
# Stanislav Zhelnio, 2020
#

#include "fun_macro.h"
#include "reg_codes.h"

            .text

start:     li      a0, 251             ## a = 251
           li      a1, 254             ## b = 254
           li      a2, 63007           ## y = 63007
           func    rx10, rx11, rx10    ## 251*251 + cbrt(254) = 63007
           bne     a0, a2, fail
           
           li      a0, 0               ## a = 0
           li      a1, 0               ## b = 0
           li      a2, 0               ## y = 0
           func    rx10, rx11, rx10    ## 0*0 + cbrt(0) = 0
           bne     a0, a2, fail
       
           li      a0, 0               ## a = 0
           li      a1, 42              ## b = 42
           li      a2, 3               ## y = 3
           func    rx10, rx11, rx10    ## 0*0 + cbrt(42) = 3
           bne     a0, a2, fail
           
           li      a0, 12              ## a = 12
           li      a1, 9               ## b = 9
           li      a2, 146             ## y = 146
           func    rx10, rx11, rx10    ## 12*12 + cbrt(9) = 146
           bne     a0, a2, fail

           li      a0, 14              ## a = 14
           li      a1, 88              ## b = 88
           li      a2, 200             ## y = 200
           func    rx10, rx11, rx10    ## 14*14 + cbrt(88) = 200
           bne     a0, a2, fail

success:   li      a0, 0               ## all test passed
           beqz    zero, end

fail:      li      a0, 1               ## at least one test failed
           beqz    zero, end

end:       beqz    zero, end           ## while(1);
