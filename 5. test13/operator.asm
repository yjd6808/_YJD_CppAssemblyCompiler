; 작성자 : 윤정도
; 작성일 : 2020-01-26 (화)

; 문제 : eax 레지스터의 상위 8비트를 toggling 하려면 어떤 명령을 사용하여야 하는가?

segment .text
global test
test:
    mov		eax,			0xB7888888      ;   1011 0111 1000 1000 1000 1000 1000 1000
    rol		eax,			8               ;   1000 1000 1000 1000 1000 1000 1011 0111
    not		al                              ;   0100 1000
    ror		eax,			8               ;   0100 1000 1000 1000 1000 1000 1000 1000
    

