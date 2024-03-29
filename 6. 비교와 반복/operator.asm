; 작성자 : 윤정도
; 작성일 : 2020-01-27 (수)
; 목적   : 비교와 반복 학습

segment .bss
extern iValue_1
extern iValue_2
extern iValue_3
extern iValue_4

extern sValue_1
extern sValue_2
extern sValue_3
extern sValue_4

extern cValue_1
extern cValue_2
extern cValue_3
extern cValue_4

segment .text
global check_overflow_flag
check_overflow_flag:
    
    lahf
    mov     word[sValue_1],     ax

    mov     ax,         0b1010101010101010
    mov     word[sValue_2],     ax
    sahf    
    mov     ax,        0
    mov     bx,        1
    add     ax,        bx

    mov     ax,        0

    lahf
    mov     word[sValue_3],     ax
    ret