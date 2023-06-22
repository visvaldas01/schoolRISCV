# RISC-V simple counter program
#
# Stanislav Zhelnio, 2020
#

            .text

start:     li      a2, 9           ## a = 1001
           li      a1, 8           ## y = 1000
           andi    a0, a2, 12      ## b = 1100
           bne     a0, a1, fail    ## 9 & 12 = 8
           
           li      a2, 254         ## a = 11111110
           li      a1, 250         ## y = 11111010
           andi    a0, a2, 251     ## b = 11111011
           bne     a0, a1, fail    ## 254 & 251 = 250
           
           li      a2, 0           ## a = 0
           li      a1, 0           ## y = 0
           andi    a0, a2, 0       ## b = 0
           bne     a0, a1, fail    ## 0 & 0 = 0
           
           li      a2, 42          ## a = 0101010
           li      a1, 0           ## y = 0
           andi    a0, a2, 69      ## b = 1000101
           bne     a0, a1, fail    ## 42 & 69 = 0
           
           li      a2, 14          ## a = 0001110
           li      a1, 8           ## y = 0001000
           andi    a0, a2, 88      ## b = 1011000
           bne     a0, a1, fail    ## 14 & 88 = 8

success:   li      a0, 0           ## all test passed
           beqz    zero, end
           
fail:      li      a0, 1           ## at least one test failed
           beqz    zero, end

end:       beqz    zero, end       ## while(1);
