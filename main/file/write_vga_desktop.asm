; Disassembly of file: write_vga_desktop.o
; Fri Sep 11 09:23:52 2020
; Mode: 32 bits
; Syntax: YASM/NASM
; Instruction set: 80386


;global CMain: function
;global init_palette: function
;global set_palette: function
;global boxfill8: function
;global showFont8: function
;global showString: function

;extern systemFont                                       ; byte
;extern io_store_eflags                                  ; near
;extern io_out8                                          ; near
;extern io_cli                                           ; near
;extern io_load_eflags                                   ; near
;extern io_hlt                                           ; near


;SECTION .text   align=1 execute                         ; section number 1, code

CMain:  ; Function begin
        push    ebp                                     ; 0000 _ 55
        mov     ebp, esp                                ; 0001 _ 89. E5
        push    ebx                                     ; 0003 _ 53
        sub     esp, 52                                 ; 0004 _ 83. EC, 34
        mov     dword [ebp-0CH], 655360                 ; 0007 _ C7. 45, F4, 000A0000
        mov     dword [ebp-10H], 320                    ; 000E _ C7. 45, F0, 00000140
        mov     dword [ebp-14H], 200                    ; 0015 _ C7. 45, EC, 000000C8
        call    init_palette                            ; 001C _ E8, FFFFFFFC(rel)
        mov     eax, dword [ebp-14H]                    ; 0021 _ 8B. 45, EC
        lea     edx, [eax-1DH]                          ; 0024 _ 8D. 50, E3
        mov     eax, dword [ebp-10H]                    ; 0027 _ 8B. 45, F0
        sub     eax, 1                                  ; 002A _ 83. E8, 01
        mov     dword [esp+18H], edx                    ; 002D _ 89. 54 24, 18
        mov     dword [esp+14H], eax                    ; 0031 _ 89. 44 24, 14
        mov     dword [esp+10H], 0                      ; 0035 _ C7. 44 24, 10, 00000000
        mov     dword [esp+0CH], 0                      ; 003D _ C7. 44 24, 0C, 00000000
        mov     dword [esp+8H], 14                      ; 0045 _ C7. 44 24, 08, 0000000E
        mov     eax, dword [ebp-10H]                    ; 004D _ 8B. 45, F0
        mov     dword [esp+4H], eax                     ; 0050 _ 89. 44 24, 04
        mov     eax, dword [ebp-0CH]                    ; 0054 _ 8B. 45, F4
        mov     dword [esp], eax                        ; 0057 _ 89. 04 24
        call    boxfill8                                ; 005A _ E8, FFFFFFFC(rel)
        mov     eax, dword [ebp-14H]                    ; 005F _ 8B. 45, EC
        lea     ecx, [eax-1CH]                          ; 0062 _ 8D. 48, E4
        mov     eax, dword [ebp-10H]                    ; 0065 _ 8B. 45, F0
        lea     edx, [eax-1H]                           ; 0068 _ 8D. 50, FF
        mov     eax, dword [ebp-14H]                    ; 006B _ 8B. 45, EC
        sub     eax, 28                                 ; 006E _ 83. E8, 1C
        mov     dword [esp+18H], ecx                    ; 0071 _ 89. 4C 24, 18
        mov     dword [esp+14H], edx                    ; 0075 _ 89. 54 24, 14
        mov     dword [esp+10H], eax                    ; 0079 _ 89. 44 24, 10
        mov     dword [esp+0CH], 0                      ; 007D _ C7. 44 24, 0C, 00000000
        mov     dword [esp+8H], 8                       ; 0085 _ C7. 44 24, 08, 00000008
        mov     eax, dword [ebp-10H]                    ; 008D _ 8B. 45, F0
        mov     dword [esp+4H], eax                     ; 0090 _ 89. 44 24, 04
        mov     eax, dword [ebp-0CH]                    ; 0094 _ 8B. 45, F4
        mov     dword [esp], eax                        ; 0097 _ 89. 04 24
        call    boxfill8                                ; 009A _ E8, FFFFFFFC(rel)
        mov     eax, dword [ebp-14H]                    ; 009F _ 8B. 45, EC
        lea     ecx, [eax-1BH]                          ; 00A2 _ 8D. 48, E5
        mov     eax, dword [ebp-10H]                    ; 00A5 _ 8B. 45, F0
        lea     edx, [eax-1H]                           ; 00A8 _ 8D. 50, FF
        mov     eax, dword [ebp-14H]                    ; 00AB _ 8B. 45, EC
        sub     eax, 27                                 ; 00AE _ 83. E8, 1B
        mov     dword [esp+18H], ecx                    ; 00B1 _ 89. 4C 24, 18
        mov     dword [esp+14H], edx                    ; 00B5 _ 89. 54 24, 14
        mov     dword [esp+10H], eax                    ; 00B9 _ 89. 44 24, 10
        mov     dword [esp+0CH], 0                      ; 00BD _ C7. 44 24, 0C, 00000000
        mov     dword [esp+8H], 7                       ; 00C5 _ C7. 44 24, 08, 00000007
        mov     eax, dword [ebp-10H]                    ; 00CD _ 8B. 45, F0
        mov     dword [esp+4H], eax                     ; 00D0 _ 89. 44 24, 04
        mov     eax, dword [ebp-0CH]                    ; 00D4 _ 8B. 45, F4
        mov     dword [esp], eax                        ; 00D7 _ 89. 04 24
        call    boxfill8                                ; 00DA _ E8, FFFFFFFC(rel)
        mov     eax, dword [ebp-14H]                    ; 00DF _ 8B. 45, EC
        lea     ecx, [eax-1H]                           ; 00E2 _ 8D. 48, FF
        mov     eax, dword [ebp-10H]                    ; 00E5 _ 8B. 45, F0
        lea     edx, [eax-1H]                           ; 00E8 _ 8D. 50, FF
        mov     eax, dword [ebp-14H]                    ; 00EB _ 8B. 45, EC
        sub     eax, 26                                 ; 00EE _ 83. E8, 1A
        mov     dword [esp+18H], ecx                    ; 00F1 _ 89. 4C 24, 18
        mov     dword [esp+14H], edx                    ; 00F5 _ 89. 54 24, 14
        mov     dword [esp+10H], eax                    ; 00F9 _ 89. 44 24, 10
        mov     dword [esp+0CH], 0                      ; 00FD _ C7. 44 24, 0C, 00000000
        mov     dword [esp+8H], 8                       ; 0105 _ C7. 44 24, 08, 00000008
        mov     eax, dword [ebp-10H]                    ; 010D _ 8B. 45, F0
        mov     dword [esp+4H], eax                     ; 0110 _ 89. 44 24, 04
        mov     eax, dword [ebp-0CH]                    ; 0114 _ 8B. 45, F4
        mov     dword [esp], eax                        ; 0117 _ 89. 04 24
        call    boxfill8                                ; 011A _ E8, FFFFFFFC(rel)
        mov     eax, dword [ebp-14H]                    ; 011F _ 8B. 45, EC
        lea     edx, [eax-18H]                          ; 0122 _ 8D. 50, E8
        mov     eax, dword [ebp-14H]                    ; 0125 _ 8B. 45, EC
        sub     eax, 24                                 ; 0128 _ 83. E8, 18
        mov     dword [esp+18H], edx                    ; 012B _ 89. 54 24, 18
        mov     dword [esp+14H], 59                     ; 012F _ C7. 44 24, 14, 0000003B
        mov     dword [esp+10H], eax                    ; 0137 _ 89. 44 24, 10
        mov     dword [esp+0CH], 3                      ; 013B _ C7. 44 24, 0C, 00000003
        mov     dword [esp+8H], 7                       ; 0143 _ C7. 44 24, 08, 00000007
        mov     eax, dword [ebp-10H]                    ; 014B _ 8B. 45, F0
        mov     dword [esp+4H], eax                     ; 014E _ 89. 44 24, 04
        mov     eax, dword [ebp-0CH]                    ; 0152 _ 8B. 45, F4
        mov     dword [esp], eax                        ; 0155 _ 89. 04 24
        call    boxfill8                                ; 0158 _ E8, FFFFFFFC(rel)
        mov     eax, dword [ebp-14H]                    ; 015D _ 8B. 45, EC
        lea     edx, [eax-4H]                           ; 0160 _ 8D. 50, FC
        mov     eax, dword [ebp-14H]                    ; 0163 _ 8B. 45, EC
        sub     eax, 24                                 ; 0166 _ 83. E8, 18
        mov     dword [esp+18H], edx                    ; 0169 _ 89. 54 24, 18
        mov     dword [esp+14H], 2                      ; 016D _ C7. 44 24, 14, 00000002
        mov     dword [esp+10H], eax                    ; 0175 _ 89. 44 24, 10
        mov     dword [esp+0CH], 2                      ; 0179 _ C7. 44 24, 0C, 00000002
        mov     dword [esp+8H], 7                       ; 0181 _ C7. 44 24, 08, 00000007
        mov     eax, dword [ebp-10H]                    ; 0189 _ 8B. 45, F0
        mov     dword [esp+4H], eax                     ; 018C _ 89. 44 24, 04
        mov     eax, dword [ebp-0CH]                    ; 0190 _ 8B. 45, F4
        mov     dword [esp], eax                        ; 0193 _ 89. 04 24
        call    boxfill8                                ; 0196 _ E8, FFFFFFFC(rel)
        mov     eax, dword [ebp-14H]                    ; 019B _ 8B. 45, EC
        lea     edx, [eax-4H]                           ; 019E _ 8D. 50, FC
        mov     eax, dword [ebp-14H]                    ; 01A1 _ 8B. 45, EC
        sub     eax, 4                                  ; 01A4 _ 83. E8, 04
        mov     dword [esp+18H], edx                    ; 01A7 _ 89. 54 24, 18
        mov     dword [esp+14H], 59                     ; 01AB _ C7. 44 24, 14, 0000003B
        mov     dword [esp+10H], eax                    ; 01B3 _ 89. 44 24, 10
        mov     dword [esp+0CH], 3                      ; 01B7 _ C7. 44 24, 0C, 00000003
        mov     dword [esp+8H], 15                      ; 01BF _ C7. 44 24, 08, 0000000F
        mov     eax, dword [ebp-10H]                    ; 01C7 _ 8B. 45, F0
        mov     dword [esp+4H], eax                     ; 01CA _ 89. 44 24, 04
        mov     eax, dword [ebp-0CH]                    ; 01CE _ 8B. 45, F4
        mov     dword [esp], eax                        ; 01D1 _ 89. 04 24
        call    boxfill8                                ; 01D4 _ E8, FFFFFFFC(rel)
        mov     eax, dword [ebp-14H]                    ; 01D9 _ 8B. 45, EC
        lea     edx, [eax-5H]                           ; 01DC _ 8D. 50, FB
        mov     eax, dword [ebp-14H]                    ; 01DF _ 8B. 45, EC
        sub     eax, 23                                 ; 01E2 _ 83. E8, 17
        mov     dword [esp+18H], edx                    ; 01E5 _ 89. 54 24, 18
        mov     dword [esp+14H], 59                     ; 01E9 _ C7. 44 24, 14, 0000003B
        mov     dword [esp+10H], eax                    ; 01F1 _ 89. 44 24, 10
        mov     dword [esp+0CH], 59                     ; 01F5 _ C7. 44 24, 0C, 0000003B
        mov     dword [esp+8H], 15                      ; 01FD _ C7. 44 24, 08, 0000000F
        mov     eax, dword [ebp-10H]                    ; 0205 _ 8B. 45, F0
        mov     dword [esp+4H], eax                     ; 0208 _ 89. 44 24, 04
        mov     eax, dword [ebp-0CH]                    ; 020C _ 8B. 45, F4
        mov     dword [esp], eax                        ; 020F _ 89. 04 24
        call    boxfill8                                ; 0212 _ E8, FFFFFFFC(rel)
        mov     eax, dword [ebp-14H]                    ; 0217 _ 8B. 45, EC
        lea     edx, [eax-3H]                           ; 021A _ 8D. 50, FD
        mov     eax, dword [ebp-14H]                    ; 021D _ 8B. 45, EC
        sub     eax, 3                                  ; 0220 _ 83. E8, 03
        mov     dword [esp+18H], edx                    ; 0223 _ 89. 54 24, 18
        mov     dword [esp+14H], 59                     ; 0227 _ C7. 44 24, 14, 0000003B
        mov     dword [esp+10H], eax                    ; 022F _ 89. 44 24, 10
        mov     dword [esp+0CH], 2                      ; 0233 _ C7. 44 24, 0C, 00000002
        mov     dword [esp+8H], 0                       ; 023B _ C7. 44 24, 08, 00000000
        mov     eax, dword [ebp-10H]                    ; 0243 _ 8B. 45, F0
        mov     dword [esp+4H], eax                     ; 0246 _ 89. 44 24, 04
        mov     eax, dword [ebp-0CH]                    ; 024A _ 8B. 45, F4
        mov     dword [esp], eax                        ; 024D _ 89. 04 24
        call    boxfill8                                ; 0250 _ E8, FFFFFFFC(rel)
        mov     eax, dword [ebp-14H]                    ; 0255 _ 8B. 45, EC
        lea     edx, [eax-3H]                           ; 0258 _ 8D. 50, FD
        mov     eax, dword [ebp-14H]                    ; 025B _ 8B. 45, EC
        sub     eax, 24                                 ; 025E _ 83. E8, 18
        mov     dword [esp+18H], edx                    ; 0261 _ 89. 54 24, 18
        mov     dword [esp+14H], 60                     ; 0265 _ C7. 44 24, 14, 0000003C
        mov     dword [esp+10H], eax                    ; 026D _ 89. 44 24, 10
        mov     dword [esp+0CH], 60                     ; 0271 _ C7. 44 24, 0C, 0000003C
        mov     dword [esp+8H], 0                       ; 0279 _ C7. 44 24, 08, 00000000
        mov     eax, dword [ebp-10H]                    ; 0281 _ 8B. 45, F0
        mov     dword [esp+4H], eax                     ; 0284 _ 89. 44 24, 04
        mov     eax, dword [ebp-0CH]                    ; 0288 _ 8B. 45, F4
        mov     dword [esp], eax                        ; 028B _ 89. 04 24
        call    boxfill8                                ; 028E _ E8, FFFFFFFC(rel)
        mov     eax, dword [ebp-14H]                    ; 0293 _ 8B. 45, EC
        lea     ebx, [eax-18H]                          ; 0296 _ 8D. 58, E8
        mov     eax, dword [ebp-10H]                    ; 0299 _ 8B. 45, F0
        lea     ecx, [eax-4H]                           ; 029C _ 8D. 48, FC
        mov     eax, dword [ebp-14H]                    ; 029F _ 8B. 45, EC
        lea     edx, [eax-18H]                          ; 02A2 _ 8D. 50, E8
        mov     eax, dword [ebp-10H]                    ; 02A5 _ 8B. 45, F0
        sub     eax, 47                                 ; 02A8 _ 83. E8, 2F
        mov     dword [esp+18H], ebx                    ; 02AB _ 89. 5C 24, 18
        mov     dword [esp+14H], ecx                    ; 02AF _ 89. 4C 24, 14
        mov     dword [esp+10H], edx                    ; 02B3 _ 89. 54 24, 10
        mov     dword [esp+0CH], eax                    ; 02B7 _ 89. 44 24, 0C
        mov     dword [esp+8H], 15                      ; 02BB _ C7. 44 24, 08, 0000000F
        mov     eax, dword [ebp-10H]                    ; 02C3 _ 8B. 45, F0
        mov     dword [esp+4H], eax                     ; 02C6 _ 89. 44 24, 04
        mov     eax, dword [ebp-0CH]                    ; 02CA _ 8B. 45, F4
        mov     dword [esp], eax                        ; 02CD _ 89. 04 24
        call    boxfill8                                ; 02D0 _ E8, FFFFFFFC(rel)
        mov     eax, dword [ebp-14H]                    ; 02D5 _ 8B. 45, EC
        lea     ebx, [eax-4H]                           ; 02D8 _ 8D. 58, FC
        mov     eax, dword [ebp-10H]                    ; 02DB _ 8B. 45, F0
        lea     ecx, [eax-2FH]                          ; 02DE _ 8D. 48, D1
        mov     eax, dword [ebp-14H]                    ; 02E1 _ 8B. 45, EC
        lea     edx, [eax-17H]                          ; 02E4 _ 8D. 50, E9
        mov     eax, dword [ebp-10H]                    ; 02E7 _ 8B. 45, F0
        sub     eax, 47                                 ; 02EA _ 83. E8, 2F
        mov     dword [esp+18H], ebx                    ; 02ED _ 89. 5C 24, 18
        mov     dword [esp+14H], ecx                    ; 02F1 _ 89. 4C 24, 14
        mov     dword [esp+10H], edx                    ; 02F5 _ 89. 54 24, 10
        mov     dword [esp+0CH], eax                    ; 02F9 _ 89. 44 24, 0C
        mov     dword [esp+8H], 15                      ; 02FD _ C7. 44 24, 08, 0000000F
        mov     eax, dword [ebp-10H]                    ; 0305 _ 8B. 45, F0
        mov     dword [esp+4H], eax                     ; 0308 _ 89. 44 24, 04
        mov     eax, dword [ebp-0CH]                    ; 030C _ 8B. 45, F4
        mov     dword [esp], eax                        ; 030F _ 89. 04 24
        call    boxfill8                                ; 0312 _ E8, FFFFFFFC(rel)
        mov     eax, dword [ebp-14H]                    ; 0317 _ 8B. 45, EC
        lea     ebx, [eax-3H]                           ; 031A _ 8D. 58, FD
        mov     eax, dword [ebp-10H]                    ; 031D _ 8B. 45, F0
        lea     ecx, [eax-4H]                           ; 0320 _ 8D. 48, FC
        mov     eax, dword [ebp-14H]                    ; 0323 _ 8B. 45, EC
        lea     edx, [eax-3H]                           ; 0326 _ 8D. 50, FD
        mov     eax, dword [ebp-10H]                    ; 0329 _ 8B. 45, F0
        sub     eax, 47                                 ; 032C _ 83. E8, 2F
        mov     dword [esp+18H], ebx                    ; 032F _ 89. 5C 24, 18
        mov     dword [esp+14H], ecx                    ; 0333 _ 89. 4C 24, 14
        mov     dword [esp+10H], edx                    ; 0337 _ 89. 54 24, 10
        mov     dword [esp+0CH], eax                    ; 033B _ 89. 44 24, 0C
        mov     dword [esp+8H], 7                       ; 033F _ C7. 44 24, 08, 00000007
        mov     eax, dword [ebp-10H]                    ; 0347 _ 8B. 45, F0
        mov     dword [esp+4H], eax                     ; 034A _ 89. 44 24, 04
        mov     eax, dword [ebp-0CH]                    ; 034E _ 8B. 45, F4
        mov     dword [esp], eax                        ; 0351 _ 89. 04 24
        call    boxfill8                                ; 0354 _ E8, FFFFFFFC(rel)
        mov     eax, dword [ebp-14H]                    ; 0359 _ 8B. 45, EC
        lea     ebx, [eax-3H]                           ; 035C _ 8D. 58, FD
        mov     eax, dword [ebp-10H]                    ; 035F _ 8B. 45, F0
        lea     ecx, [eax-3H]                           ; 0362 _ 8D. 48, FD
        mov     eax, dword [ebp-14H]                    ; 0365 _ 8B. 45, EC
        lea     edx, [eax-18H]                          ; 0368 _ 8D. 50, E8
        mov     eax, dword [ebp-10H]                    ; 036B _ 8B. 45, F0
        sub     eax, 3                                  ; 036E _ 83. E8, 03
        mov     dword [esp+18H], ebx                    ; 0371 _ 89. 5C 24, 18
        mov     dword [esp+14H], ecx                    ; 0375 _ 89. 4C 24, 14
        mov     dword [esp+10H], edx                    ; 0379 _ 89. 54 24, 10
        mov     dword [esp+0CH], eax                    ; 037D _ 89. 44 24, 0C
        mov     dword [esp+8H], 7                       ; 0381 _ C7. 44 24, 08, 00000007
        mov     eax, dword [ebp-10H]                    ; 0389 _ 8B. 45, F0
        mov     dword [esp+4H], eax                     ; 038C _ 89. 44 24, 04
        mov     eax, dword [ebp-0CH]                    ; 0390 _ 8B. 45, F4
        mov     dword [esp], eax                        ; 0393 _ 89. 04 24
        call    boxfill8                                ; 0396 _ E8, FFFFFFFC(rel)
        mov     dword [esp+14H], ?_020                  ; 039B _ C7. 44 24, 14, 00000000(d)
        mov     dword [esp+10H], 7                      ; 03A3 _ C7. 44 24, 10, 00000007
        mov     dword [esp+0CH], 8                      ; 03AB _ C7. 44 24, 0C, 00000008
        mov     dword [esp+8H], 8                       ; 03B3 _ C7. 44 24, 08, 00000008
        mov     eax, dword [ebp-10H]                    ; 03BB _ 8B. 45, F0
        mov     dword [esp+4H], eax                     ; 03BE _ 89. 44 24, 04
        mov     eax, dword [ebp-0CH]                    ; 03C2 _ 8B. 45, F4
        mov     dword [esp], eax                        ; 03C5 _ 89. 04 24
        call    showString                              ; 03C8 _ E8, FFFFFFFC(rel)
?_001:  call    io_hlt                                  ; 03CD _ E8, FFFFFFFC(rel)
        jmp     ?_001                                   ; 03D2 _ EB, F9
; CMain End of function

init_palette:; Function begin
        push    ebp                                     ; 03D4 _ 55
        mov     ebp, esp                                ; 03D5 _ 89. E5
        sub     esp, 24                                 ; 03D7 _ 83. EC, 18
        mov     dword [esp+8H], table_rgb.1743          ; 03DA _ C7. 44 24, 08, 00000020(d)
        mov     dword [esp+4H], 15                      ; 03E2 _ C7. 44 24, 04, 0000000F
        mov     dword [esp], 0                          ; 03EA _ C7. 04 24, 00000000
        call    set_palette                             ; 03F1 _ E8, FFFFFFFC(rel)
        nop                                             ; 03F6 _ 90
        leave                                           ; 03F7 _ C9
        ret                                             ; 03F8 _ C3
; init_palette End of function

set_palette:; Function begin
        push    ebp                                     ; 03F9 _ 55
        mov     ebp, esp                                ; 03FA _ 89. E5
        sub     esp, 40                                 ; 03FC _ 83. EC, 28
        call    io_load_eflags                          ; 03FF _ E8, FFFFFFFC(rel)
        mov     dword [ebp-10H], eax                    ; 0404 _ 89. 45, F0
        call    io_cli                                  ; 0407 _ E8, FFFFFFFC(rel)
        mov     eax, dword [ebp+8H]                     ; 040C _ 8B. 45, 08
        mov     dword [esp+4H], eax                     ; 040F _ 89. 44 24, 04
        mov     dword [esp], 968                        ; 0413 _ C7. 04 24, 000003C8
        call    io_out8                                 ; 041A _ E8, FFFFFFFC(rel)
        mov     eax, dword [ebp+8H]                     ; 041F _ 8B. 45, 08
        mov     dword [ebp-0CH], eax                    ; 0422 _ 89. 45, F4
        jmp     ?_003                                   ; 0425 _ EB, 62

?_002:  mov     eax, dword [ebp+10H]                    ; 0427 _ 8B. 45, 10
        movzx   eax, byte [eax]                         ; 042A _ 0F B6. 00
        shr     al, 2                                   ; 042D _ C0. E8, 02
        movzx   eax, al                                 ; 0430 _ 0F B6. C0
        mov     dword [esp+4H], eax                     ; 0433 _ 89. 44 24, 04
        mov     dword [esp], 969                        ; 0437 _ C7. 04 24, 000003C9
        call    io_out8                                 ; 043E _ E8, FFFFFFFC(rel)
        mov     eax, dword [ebp+10H]                    ; 0443 _ 8B. 45, 10
        add     eax, 1                                  ; 0446 _ 83. C0, 01
        movzx   eax, byte [eax]                         ; 0449 _ 0F B6. 00
        shr     al, 2                                   ; 044C _ C0. E8, 02
        movzx   eax, al                                 ; 044F _ 0F B6. C0
        mov     dword [esp+4H], eax                     ; 0452 _ 89. 44 24, 04
        mov     dword [esp], 969                        ; 0456 _ C7. 04 24, 000003C9
        call    io_out8                                 ; 045D _ E8, FFFFFFFC(rel)
        mov     eax, dword [ebp+10H]                    ; 0462 _ 8B. 45, 10
        add     eax, 2                                  ; 0465 _ 83. C0, 02
        movzx   eax, byte [eax]                         ; 0468 _ 0F B6. 00
        shr     al, 2                                   ; 046B _ C0. E8, 02
        movzx   eax, al                                 ; 046E _ 0F B6. C0
        mov     dword [esp+4H], eax                     ; 0471 _ 89. 44 24, 04
        mov     dword [esp], 969                        ; 0475 _ C7. 04 24, 000003C9
        call    io_out8                                 ; 047C _ E8, FFFFFFFC(rel)
        add     dword [ebp+10H], 3                      ; 0481 _ 83. 45, 10, 03
        add     dword [ebp-0CH], 1                      ; 0485 _ 83. 45, F4, 01
?_003:  mov     eax, dword [ebp-0CH]                    ; 0489 _ 8B. 45, F4
        cmp     eax, dword [ebp+0CH]                    ; 048C _ 3B. 45, 0C
        jle     ?_002                                   ; 048F _ 7E, 96
        mov     eax, dword [ebp-10H]                    ; 0491 _ 8B. 45, F0
        mov     dword [esp], eax                        ; 0494 _ 89. 04 24
        call    io_store_eflags                         ; 0497 _ E8, FFFFFFFC(rel)
        nop                                             ; 049C _ 90
        leave                                           ; 049D _ C9
        ret                                             ; 049E _ C3
; set_palette End of function

boxfill8:; Function begin
        push    ebp                                     ; 049F _ 55
        mov     ebp, esp                                ; 04A0 _ 89. E5
        sub     esp, 20                                 ; 04A2 _ 83. EC, 14
        mov     eax, dword [ebp+10H]                    ; 04A5 _ 8B. 45, 10
        mov     byte [ebp-14H], al                      ; 04A8 _ 88. 45, EC
        mov     eax, dword [ebp+18H]                    ; 04AB _ 8B. 45, 18
        mov     dword [ebp-8H], eax                     ; 04AE _ 89. 45, F8
        jmp     ?_007                                   ; 04B1 _ EB, 33

?_004:  mov     eax, dword [ebp+14H]                    ; 04B3 _ 8B. 45, 14
        mov     dword [ebp-4H], eax                     ; 04B6 _ 89. 45, FC
        jmp     ?_006                                   ; 04B9 _ EB, 1F

?_005:  mov     eax, dword [ebp-8H]                     ; 04BB _ 8B. 45, F8
        imul    eax, dword [ebp+0CH]                    ; 04BE _ 0F AF. 45, 0C
        mov     edx, eax                                ; 04C2 _ 89. C2
        mov     eax, dword [ebp-4H]                     ; 04C4 _ 8B. 45, FC
        add     eax, edx                                ; 04C7 _ 01. D0
        mov     edx, eax                                ; 04C9 _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 04CB _ 8B. 45, 08
        add     edx, eax                                ; 04CE _ 01. C2
        movzx   eax, byte [ebp-14H]                     ; 04D0 _ 0F B6. 45, EC
        mov     byte [edx], al                          ; 04D4 _ 88. 02
        add     dword [ebp-4H], 1                       ; 04D6 _ 83. 45, FC, 01
?_006:  mov     eax, dword [ebp-4H]                     ; 04DA _ 8B. 45, FC
        cmp     eax, dword [ebp+1CH]                    ; 04DD _ 3B. 45, 1C
        jle     ?_005                                   ; 04E0 _ 7E, D9
        add     dword [ebp-8H], 1                       ; 04E2 _ 83. 45, F8, 01
?_007:  mov     eax, dword [ebp-8H]                     ; 04E6 _ 8B. 45, F8
        cmp     eax, dword [ebp+20H]                    ; 04E9 _ 3B. 45, 20
        jle     ?_004                                   ; 04EC _ 7E, C5
        leave                                           ; 04EE _ C9
        ret                                             ; 04EF _ C3
; boxfill8 End of function

showFont8:; Function begin
        push    ebp                                     ; 04F0 _ 55
        mov     ebp, esp                                ; 04F1 _ 89. E5
        sub     esp, 20                                 ; 04F3 _ 83. EC, 14
        mov     eax, dword [ebp+18H]                    ; 04F6 _ 8B. 45, 18
        mov     byte [ebp-14H], al                      ; 04F9 _ 88. 45, EC
        mov     dword [ebp-4H], 0                       ; 04FC _ C7. 45, FC, 00000000
        jmp     ?_017                                   ; 0503 _ E9, 0000016C

?_008:  mov     edx, dword [ebp-4H]                     ; 0508 _ 8B. 55, FC
        mov     eax, dword [ebp+1CH]                    ; 050B _ 8B. 45, 1C
        add     eax, edx                                ; 050E _ 01. D0
        movzx   eax, byte [eax]                         ; 0510 _ 0F B6. 00
        mov     byte [ebp-5H], al                       ; 0513 _ 88. 45, FB
        cmp     byte [ebp-5H], 0                        ; 0516 _ 80. 7D, FB, 00
        jns     ?_009                                   ; 051A _ 79, 20
        mov     eax, dword [ebp-4H]                     ; 051C _ 8B. 45, FC
        mov     edx, dword [ebp+14H]                    ; 051F _ 8B. 55, 14
        add     eax, edx                                ; 0522 _ 01. D0
        imul    eax, dword [ebp+0CH]                    ; 0524 _ 0F AF. 45, 0C
        mov     edx, eax                                ; 0528 _ 89. C2
        mov     eax, dword [ebp+10H]                    ; 052A _ 8B. 45, 10
        add     eax, edx                                ; 052D _ 01. D0
        mov     edx, eax                                ; 052F _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 0531 _ 8B. 45, 08
        add     edx, eax                                ; 0534 _ 01. C2
        movzx   eax, byte [ebp-14H]                     ; 0536 _ 0F B6. 45, EC
        mov     byte [edx], al                          ; 053A _ 88. 02
?_009:  movsx   eax, byte [ebp-5H]                      ; 053C _ 0F BE. 45, FB
        and     eax, 40H                                ; 0540 _ 83. E0, 40
        test    eax, eax                                ; 0543 _ 85. C0
        jz      ?_010                                   ; 0545 _ 74, 21
        mov     eax, dword [ebp-4H]                     ; 0547 _ 8B. 45, FC
        mov     edx, dword [ebp+14H]                    ; 054A _ 8B. 55, 14
        add     eax, edx                                ; 054D _ 01. D0
        imul    eax, dword [ebp+0CH]                    ; 054F _ 0F AF. 45, 0C
        mov     edx, eax                                ; 0553 _ 89. C2
        mov     eax, dword [ebp+10H]                    ; 0555 _ 8B. 45, 10
        add     eax, edx                                ; 0558 _ 01. D0
        lea     edx, [eax+1H]                           ; 055A _ 8D. 50, 01
        mov     eax, dword [ebp+8H]                     ; 055D _ 8B. 45, 08
        add     edx, eax                                ; 0560 _ 01. C2
        movzx   eax, byte [ebp-14H]                     ; 0562 _ 0F B6. 45, EC
        mov     byte [edx], al                          ; 0566 _ 88. 02
?_010:  movsx   eax, byte [ebp-5H]                      ; 0568 _ 0F BE. 45, FB
        and     eax, 20H                                ; 056C _ 83. E0, 20
        test    eax, eax                                ; 056F _ 85. C0
        jz      ?_011                                   ; 0571 _ 74, 21
        mov     eax, dword [ebp-4H]                     ; 0573 _ 8B. 45, FC
        mov     edx, dword [ebp+14H]                    ; 0576 _ 8B. 55, 14
        add     eax, edx                                ; 0579 _ 01. D0
        imul    eax, dword [ebp+0CH]                    ; 057B _ 0F AF. 45, 0C
        mov     edx, eax                                ; 057F _ 89. C2
        mov     eax, dword [ebp+10H]                    ; 0581 _ 8B. 45, 10
        add     eax, edx                                ; 0584 _ 01. D0
        lea     edx, [eax+2H]                           ; 0586 _ 8D. 50, 02
        mov     eax, dword [ebp+8H]                     ; 0589 _ 8B. 45, 08
        add     edx, eax                                ; 058C _ 01. C2
        movzx   eax, byte [ebp-14H]                     ; 058E _ 0F B6. 45, EC
        mov     byte [edx], al                          ; 0592 _ 88. 02
?_011:  movsx   eax, byte [ebp-5H]                      ; 0594 _ 0F BE. 45, FB
        and     eax, 10H                                ; 0598 _ 83. E0, 10
        test    eax, eax                                ; 059B _ 85. C0
        jz      ?_012                                   ; 059D _ 74, 21
        mov     eax, dword [ebp-4H]                     ; 059F _ 8B. 45, FC
        mov     edx, dword [ebp+14H]                    ; 05A2 _ 8B. 55, 14
        add     eax, edx                                ; 05A5 _ 01. D0
        imul    eax, dword [ebp+0CH]                    ; 05A7 _ 0F AF. 45, 0C
        mov     edx, eax                                ; 05AB _ 89. C2
        mov     eax, dword [ebp+10H]                    ; 05AD _ 8B. 45, 10
        add     eax, edx                                ; 05B0 _ 01. D0
        lea     edx, [eax+3H]                           ; 05B2 _ 8D. 50, 03
        mov     eax, dword [ebp+8H]                     ; 05B5 _ 8B. 45, 08
        add     edx, eax                                ; 05B8 _ 01. C2
        movzx   eax, byte [ebp-14H]                     ; 05BA _ 0F B6. 45, EC
        mov     byte [edx], al                          ; 05BE _ 88. 02
?_012:  movsx   eax, byte [ebp-5H]                      ; 05C0 _ 0F BE. 45, FB
        and     eax, 08H                                ; 05C4 _ 83. E0, 08
        test    eax, eax                                ; 05C7 _ 85. C0
        jz      ?_013                                   ; 05C9 _ 74, 21
        mov     eax, dword [ebp-4H]                     ; 05CB _ 8B. 45, FC
        mov     edx, dword [ebp+14H]                    ; 05CE _ 8B. 55, 14
        add     eax, edx                                ; 05D1 _ 01. D0
        imul    eax, dword [ebp+0CH]                    ; 05D3 _ 0F AF. 45, 0C
        mov     edx, eax                                ; 05D7 _ 89. C2
        mov     eax, dword [ebp+10H]                    ; 05D9 _ 8B. 45, 10
        add     eax, edx                                ; 05DC _ 01. D0
        lea     edx, [eax+4H]                           ; 05DE _ 8D. 50, 04
        mov     eax, dword [ebp+8H]                     ; 05E1 _ 8B. 45, 08
        add     edx, eax                                ; 05E4 _ 01. C2
        movzx   eax, byte [ebp-14H]                     ; 05E6 _ 0F B6. 45, EC
        mov     byte [edx], al                          ; 05EA _ 88. 02
?_013:  movsx   eax, byte [ebp-5H]                      ; 05EC _ 0F BE. 45, FB
        and     eax, 04H                                ; 05F0 _ 83. E0, 04
        test    eax, eax                                ; 05F3 _ 85. C0
        jz      ?_014                                   ; 05F5 _ 74, 21
        mov     eax, dword [ebp-4H]                     ; 05F7 _ 8B. 45, FC
        mov     edx, dword [ebp+14H]                    ; 05FA _ 8B. 55, 14
        add     eax, edx                                ; 05FD _ 01. D0
        imul    eax, dword [ebp+0CH]                    ; 05FF _ 0F AF. 45, 0C
        mov     edx, eax                                ; 0603 _ 89. C2
        mov     eax, dword [ebp+10H]                    ; 0605 _ 8B. 45, 10
        add     eax, edx                                ; 0608 _ 01. D0
        lea     edx, [eax+5H]                           ; 060A _ 8D. 50, 05
        mov     eax, dword [ebp+8H]                     ; 060D _ 8B. 45, 08
        add     edx, eax                                ; 0610 _ 01. C2
        movzx   eax, byte [ebp-14H]                     ; 0612 _ 0F B6. 45, EC
        mov     byte [edx], al                          ; 0616 _ 88. 02
?_014:  movsx   eax, byte [ebp-5H]                      ; 0618 _ 0F BE. 45, FB
        and     eax, 02H                                ; 061C _ 83. E0, 02
        test    eax, eax                                ; 061F _ 85. C0
        jz      ?_015                                   ; 0621 _ 74, 21
        mov     eax, dword [ebp-4H]                     ; 0623 _ 8B. 45, FC
        mov     edx, dword [ebp+14H]                    ; 0626 _ 8B. 55, 14
        add     eax, edx                                ; 0629 _ 01. D0
        imul    eax, dword [ebp+0CH]                    ; 062B _ 0F AF. 45, 0C
        mov     edx, eax                                ; 062F _ 89. C2
        mov     eax, dword [ebp+10H]                    ; 0631 _ 8B. 45, 10
        add     eax, edx                                ; 0634 _ 01. D0
        lea     edx, [eax+6H]                           ; 0636 _ 8D. 50, 06
        mov     eax, dword [ebp+8H]                     ; 0639 _ 8B. 45, 08
        add     edx, eax                                ; 063C _ 01. C2
        movzx   eax, byte [ebp-14H]                     ; 063E _ 0F B6. 45, EC
        mov     byte [edx], al                          ; 0642 _ 88. 02
?_015:  movsx   eax, byte [ebp-5H]                      ; 0644 _ 0F BE. 45, FB
        and     eax, 01H                                ; 0648 _ 83. E0, 01
        test    eax, eax                                ; 064B _ 85. C0
        jz      ?_016                                   ; 064D _ 74, 21
        mov     eax, dword [ebp-4H]                     ; 064F _ 8B. 45, FC
        mov     edx, dword [ebp+14H]                    ; 0652 _ 8B. 55, 14
        add     eax, edx                                ; 0655 _ 01. D0
        imul    eax, dword [ebp+0CH]                    ; 0657 _ 0F AF. 45, 0C
        mov     edx, eax                                ; 065B _ 89. C2
        mov     eax, dword [ebp+10H]                    ; 065D _ 8B. 45, 10
        add     eax, edx                                ; 0660 _ 01. D0
        lea     edx, [eax+7H]                           ; 0662 _ 8D. 50, 07
        mov     eax, dword [ebp+8H]                     ; 0665 _ 8B. 45, 08
        add     edx, eax                                ; 0668 _ 01. C2
        movzx   eax, byte [ebp-14H]                     ; 066A _ 0F B6. 45, EC
        mov     byte [edx], al                          ; 066E _ 88. 02
?_016:  add     dword [ebp-4H], 1                       ; 0670 _ 83. 45, FC, 01
?_017:  cmp     dword [ebp-4H], 15                      ; 0674 _ 83. 7D, FC, 0F
        jle     ?_008                                   ; 0678 _ 0F 8E, FFFFFE8A
        leave                                           ; 067E _ C9
        ret                                             ; 067F _ C3
; showFont8 End of function

showString:; Function begin
        push    ebp                                     ; 0680 _ 55
        mov     ebp, esp                                ; 0681 _ 89. E5
        sub     esp, 28                                 ; 0683 _ 83. EC, 1C
        mov     eax, dword [ebp+18H]                    ; 0686 _ 8B. 45, 18
        mov     byte [ebp-4H], al                       ; 0689 _ 88. 45, FC
        jmp     ?_019                                   ; 068C _ EB, 49

?_018:  mov     eax, dword [ebp+1CH]                    ; 068E _ 8B. 45, 1C
        movzx   eax, byte [eax]                         ; 0691 _ 0F B6. 00
        movzx   eax, al                                 ; 0694 _ 0F B6. C0
        sub     eax, 32                                 ; 0697 _ 83. E8, 20
        shl     eax, 4                                  ; 069A _ C1. E0, 04
        lea     edx, [systemFont+eax]                   ; 069D _ 8D. 90, 00000000(d)
        movsx   eax, byte [ebp-4H]                      ; 06A3 _ 0F BE. 45, FC
        mov     dword [esp+14H], edx                    ; 06A7 _ 89. 54 24, 14
        mov     dword [esp+10H], eax                    ; 06AB _ 89. 44 24, 10
        mov     eax, dword [ebp+14H]                    ; 06AF _ 8B. 45, 14
        mov     dword [esp+0CH], eax                    ; 06B2 _ 89. 44 24, 0C
        mov     eax, dword [ebp+10H]                    ; 06B6 _ 8B. 45, 10
        mov     dword [esp+8H], eax                     ; 06B9 _ 89. 44 24, 08
        mov     eax, dword [ebp+0CH]                    ; 06BD _ 8B. 45, 0C
        mov     dword [esp+4H], eax                     ; 06C0 _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 06C4 _ 8B. 45, 08
        mov     dword [esp], eax                        ; 06C7 _ 89. 04 24
        call    showFont8                               ; 06CA _ E8, FFFFFFFC(rel)
        add     dword [ebp+10H], 8                      ; 06CF _ 83. 45, 10, 08
        add     dword [ebp+1CH], 1                      ; 06D3 _ 83. 45, 1C, 01
?_019:  mov     eax, dword [ebp+1CH]                    ; 06D7 _ 8B. 45, 1C
        movzx   eax, byte [eax]                         ; 06DA _ 0F B6. 00
        test    al, al                                  ; 06DD _ 84. C0
        jnz     ?_018                                   ; 06DF _ 75, AD
        leave                                           ; 06E1 _ C9
        ret                                             ; 06E2 _ C3
; showString End of function


;SECTION .data   align=32 noexecute                      ; section number 2, data

fontA:                                                  ; oword
        db 00H, 18H, 18H, 18H, 18H, 24H, 24H, 24H       ; 0000 _ .....$$$
        db 24H, 7EH, 42H, 42H, 42H, 0E7H, 00H, 00H      ; 0008 _ $~BBB...
        db 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H       ; 0010 _ ........
        db 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H       ; 0018 _ ........

table_rgb.1743:                                         ; byte
        db 00H, 00H, 00H, 0FFH, 00H, 00H, 00H, 0FFH     ; 0020 _ ........
        db 00H, 0FFH, 0FFH, 00H, 00H, 00H, 0FFH, 0FFH   ; 0028 _ ........
        db 00H, 0FFH, 00H, 0FFH, 0FFH, 0FFH, 0FFH, 0FFH ; 0030 _ ........
        db 0C6H, 0C6H, 0C6H, 84H, 00H, 00H, 00H, 84H    ; 0038 _ ........
        db 00H, 84H, 84H, 00H, 00H, 00H, 84H, 84H       ; 0040 _ ........
        db 00H, 84H, 00H, 84H, 84H, 84H, 84H, 84H       ; 0048 _ ........


;SECTION .bss    align=1 noexecute                       ; section number 3, bss


;SECTION .rodata align=1 noexecute                       ; section number 4, const

?_020:                                                  ; byte
        db 77H, 65H, 6CH, 63H, 6FH, 6DH, 65H, 20H       ; 0000 _ welcome 
        db 74H, 6FH, 20H, 6CH, 69H, 61H, 6EH, 78H       ; 0008 _ to lianx
        db 00H                                          ; 0010 _ .


