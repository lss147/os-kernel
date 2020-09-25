; Disassembly of file: write_vga_desktop.o
; Fri Sep 25 19:43:09 2020
; Mode: 32 bits
; Syntax: YASM/NASM
; Instruction set: 80386


;global CMain: function
;global initBootInfo: function
;global init_palette: function
;global set_palette: function
;global boxfill8: function
;global showFont8: function
;global showString: function
;global init_mouse_cursor: function
;global putblock: function
;global intHandlerFromC: function
;global charToHexVal: function
;global charToHexStr: function

;extern io_in8                                           ; near
;extern systemFont                                       ; byte
;extern io_store_eflags                                  ; near
;extern io_out8                                          ; near
;extern io_load_eflags                                   ; near
;extern io_stihlt                                        ; near
;extern io_cli                                           ; near
;extern io_sti                                           ; near


;SECTION .text   align=1 execute                         ; section number 1, code

CMain:  ; Function begin
        push    ebp                                     ; 0000 _ 55
        mov     ebp, esp                                ; 0001 _ 89. E5
        push    ebx                                     ; 0003 _ 53
        sub     esp, 68                                 ; 0004 _ 83. EC, 44
        mov     dword [esp], bootInfo                   ; 0007 _ C7. 04 24, 0000012C(d)
        call    initBootInfo                            ; 000E _ E8, FFFFFFFC(rel)
        mov     eax, dword [bootInfo]                   ; 0013 _ A1, 0000012C(d)
        mov     dword [ebp-0CH], eax                    ; 0018 _ 89. 45, F4
        movzx   eax, word [?_040]                       ; 001B _ 0F B7. 05, 00000130(d)
        cwde                                            ; 0022 _ 98
        mov     dword [ebp-10H], eax                    ; 0023 _ 89. 45, F0
        movzx   eax, word [?_041]                       ; 0026 _ 0F B7. 05, 00000132(d)
        cwde                                            ; 002D _ 98
        mov     dword [ebp-14H], eax                    ; 002E _ 89. 45, EC
        call    init_palette                            ; 0031 _ E8, FFFFFFFC(rel)
        mov     eax, dword [ebp-14H]                    ; 0036 _ 8B. 45, EC
        lea     edx, [eax-1DH]                          ; 0039 _ 8D. 50, E3
        mov     eax, dword [ebp-10H]                    ; 003C _ 8B. 45, F0
        sub     eax, 1                                  ; 003F _ 83. E8, 01
        mov     dword [esp+18H], edx                    ; 0042 _ 89. 54 24, 18
        mov     dword [esp+14H], eax                    ; 0046 _ 89. 44 24, 14
        mov     dword [esp+10H], 0                      ; 004A _ C7. 44 24, 10, 00000000
        mov     dword [esp+0CH], 0                      ; 0052 _ C7. 44 24, 0C, 00000000
        mov     dword [esp+8H], 14                      ; 005A _ C7. 44 24, 08, 0000000E
        mov     eax, dword [ebp-10H]                    ; 0062 _ 8B. 45, F0
        mov     dword [esp+4H], eax                     ; 0065 _ 89. 44 24, 04
        mov     eax, dword [ebp-0CH]                    ; 0069 _ 8B. 45, F4
        mov     dword [esp], eax                        ; 006C _ 89. 04 24
        call    boxfill8                                ; 006F _ E8, FFFFFFFC(rel)
        mov     eax, dword [ebp-14H]                    ; 0074 _ 8B. 45, EC
        lea     ecx, [eax-1CH]                          ; 0077 _ 8D. 48, E4
        mov     eax, dword [ebp-10H]                    ; 007A _ 8B. 45, F0
        lea     edx, [eax-1H]                           ; 007D _ 8D. 50, FF
        mov     eax, dword [ebp-14H]                    ; 0080 _ 8B. 45, EC
        sub     eax, 28                                 ; 0083 _ 83. E8, 1C
        mov     dword [esp+18H], ecx                    ; 0086 _ 89. 4C 24, 18
        mov     dword [esp+14H], edx                    ; 008A _ 89. 54 24, 14
        mov     dword [esp+10H], eax                    ; 008E _ 89. 44 24, 10
        mov     dword [esp+0CH], 0                      ; 0092 _ C7. 44 24, 0C, 00000000
        mov     dword [esp+8H], 8                       ; 009A _ C7. 44 24, 08, 00000008
        mov     eax, dword [ebp-10H]                    ; 00A2 _ 8B. 45, F0
        mov     dword [esp+4H], eax                     ; 00A5 _ 89. 44 24, 04
        mov     eax, dword [ebp-0CH]                    ; 00A9 _ 8B. 45, F4
        mov     dword [esp], eax                        ; 00AC _ 89. 04 24
        call    boxfill8                                ; 00AF _ E8, FFFFFFFC(rel)
        mov     eax, dword [ebp-14H]                    ; 00B4 _ 8B. 45, EC
        lea     ecx, [eax-1BH]                          ; 00B7 _ 8D. 48, E5
        mov     eax, dword [ebp-10H]                    ; 00BA _ 8B. 45, F0
        lea     edx, [eax-1H]                           ; 00BD _ 8D. 50, FF
        mov     eax, dword [ebp-14H]                    ; 00C0 _ 8B. 45, EC
        sub     eax, 27                                 ; 00C3 _ 83. E8, 1B
        mov     dword [esp+18H], ecx                    ; 00C6 _ 89. 4C 24, 18
        mov     dword [esp+14H], edx                    ; 00CA _ 89. 54 24, 14
        mov     dword [esp+10H], eax                    ; 00CE _ 89. 44 24, 10
        mov     dword [esp+0CH], 0                      ; 00D2 _ C7. 44 24, 0C, 00000000
        mov     dword [esp+8H], 7                       ; 00DA _ C7. 44 24, 08, 00000007
        mov     eax, dword [ebp-10H]                    ; 00E2 _ 8B. 45, F0
        mov     dword [esp+4H], eax                     ; 00E5 _ 89. 44 24, 04
        mov     eax, dword [ebp-0CH]                    ; 00E9 _ 8B. 45, F4
        mov     dword [esp], eax                        ; 00EC _ 89. 04 24
        call    boxfill8                                ; 00EF _ E8, FFFFFFFC(rel)
        mov     eax, dword [ebp-14H]                    ; 00F4 _ 8B. 45, EC
        lea     ecx, [eax-1H]                           ; 00F7 _ 8D. 48, FF
        mov     eax, dword [ebp-10H]                    ; 00FA _ 8B. 45, F0
        lea     edx, [eax-1H]                           ; 00FD _ 8D. 50, FF
        mov     eax, dword [ebp-14H]                    ; 0100 _ 8B. 45, EC
        sub     eax, 26                                 ; 0103 _ 83. E8, 1A
        mov     dword [esp+18H], ecx                    ; 0106 _ 89. 4C 24, 18
        mov     dword [esp+14H], edx                    ; 010A _ 89. 54 24, 14
        mov     dword [esp+10H], eax                    ; 010E _ 89. 44 24, 10
        mov     dword [esp+0CH], 0                      ; 0112 _ C7. 44 24, 0C, 00000000
        mov     dword [esp+8H], 8                       ; 011A _ C7. 44 24, 08, 00000008
        mov     eax, dword [ebp-10H]                    ; 0122 _ 8B. 45, F0
        mov     dword [esp+4H], eax                     ; 0125 _ 89. 44 24, 04
        mov     eax, dword [ebp-0CH]                    ; 0129 _ 8B. 45, F4
        mov     dword [esp], eax                        ; 012C _ 89. 04 24
        call    boxfill8                                ; 012F _ E8, FFFFFFFC(rel)
        mov     eax, dword [ebp-14H]                    ; 0134 _ 8B. 45, EC
        lea     edx, [eax-18H]                          ; 0137 _ 8D. 50, E8
        mov     eax, dword [ebp-14H]                    ; 013A _ 8B. 45, EC
        sub     eax, 24                                 ; 013D _ 83. E8, 18
        mov     dword [esp+18H], edx                    ; 0140 _ 89. 54 24, 18
        mov     dword [esp+14H], 59                     ; 0144 _ C7. 44 24, 14, 0000003B
        mov     dword [esp+10H], eax                    ; 014C _ 89. 44 24, 10
        mov     dword [esp+0CH], 3                      ; 0150 _ C7. 44 24, 0C, 00000003
        mov     dword [esp+8H], 7                       ; 0158 _ C7. 44 24, 08, 00000007
        mov     eax, dword [ebp-10H]                    ; 0160 _ 8B. 45, F0
        mov     dword [esp+4H], eax                     ; 0163 _ 89. 44 24, 04
        mov     eax, dword [ebp-0CH]                    ; 0167 _ 8B. 45, F4
        mov     dword [esp], eax                        ; 016A _ 89. 04 24
        call    boxfill8                                ; 016D _ E8, FFFFFFFC(rel)
        mov     eax, dword [ebp-14H]                    ; 0172 _ 8B. 45, EC
        lea     edx, [eax-4H]                           ; 0175 _ 8D. 50, FC
        mov     eax, dword [ebp-14H]                    ; 0178 _ 8B. 45, EC
        sub     eax, 24                                 ; 017B _ 83. E8, 18
        mov     dword [esp+18H], edx                    ; 017E _ 89. 54 24, 18
        mov     dword [esp+14H], 2                      ; 0182 _ C7. 44 24, 14, 00000002
        mov     dword [esp+10H], eax                    ; 018A _ 89. 44 24, 10
        mov     dword [esp+0CH], 2                      ; 018E _ C7. 44 24, 0C, 00000002
        mov     dword [esp+8H], 7                       ; 0196 _ C7. 44 24, 08, 00000007
        mov     eax, dword [ebp-10H]                    ; 019E _ 8B. 45, F0
        mov     dword [esp+4H], eax                     ; 01A1 _ 89. 44 24, 04
        mov     eax, dword [ebp-0CH]                    ; 01A5 _ 8B. 45, F4
        mov     dword [esp], eax                        ; 01A8 _ 89. 04 24
        call    boxfill8                                ; 01AB _ E8, FFFFFFFC(rel)
        mov     eax, dword [ebp-14H]                    ; 01B0 _ 8B. 45, EC
        lea     edx, [eax-4H]                           ; 01B3 _ 8D. 50, FC
        mov     eax, dword [ebp-14H]                    ; 01B6 _ 8B. 45, EC
        sub     eax, 4                                  ; 01B9 _ 83. E8, 04
        mov     dword [esp+18H], edx                    ; 01BC _ 89. 54 24, 18
        mov     dword [esp+14H], 59                     ; 01C0 _ C7. 44 24, 14, 0000003B
        mov     dword [esp+10H], eax                    ; 01C8 _ 89. 44 24, 10
        mov     dword [esp+0CH], 3                      ; 01CC _ C7. 44 24, 0C, 00000003
        mov     dword [esp+8H], 15                      ; 01D4 _ C7. 44 24, 08, 0000000F
        mov     eax, dword [ebp-10H]                    ; 01DC _ 8B. 45, F0
        mov     dword [esp+4H], eax                     ; 01DF _ 89. 44 24, 04
        mov     eax, dword [ebp-0CH]                    ; 01E3 _ 8B. 45, F4
        mov     dword [esp], eax                        ; 01E6 _ 89. 04 24
        call    boxfill8                                ; 01E9 _ E8, FFFFFFFC(rel)
        mov     eax, dword [ebp-14H]                    ; 01EE _ 8B. 45, EC
        lea     edx, [eax-5H]                           ; 01F1 _ 8D. 50, FB
        mov     eax, dword [ebp-14H]                    ; 01F4 _ 8B. 45, EC
        sub     eax, 23                                 ; 01F7 _ 83. E8, 17
        mov     dword [esp+18H], edx                    ; 01FA _ 89. 54 24, 18
        mov     dword [esp+14H], 59                     ; 01FE _ C7. 44 24, 14, 0000003B
        mov     dword [esp+10H], eax                    ; 0206 _ 89. 44 24, 10
        mov     dword [esp+0CH], 59                     ; 020A _ C7. 44 24, 0C, 0000003B
        mov     dword [esp+8H], 15                      ; 0212 _ C7. 44 24, 08, 0000000F
        mov     eax, dword [ebp-10H]                    ; 021A _ 8B. 45, F0
        mov     dword [esp+4H], eax                     ; 021D _ 89. 44 24, 04
        mov     eax, dword [ebp-0CH]                    ; 0221 _ 8B. 45, F4
        mov     dword [esp], eax                        ; 0224 _ 89. 04 24
        call    boxfill8                                ; 0227 _ E8, FFFFFFFC(rel)
        mov     eax, dword [ebp-14H]                    ; 022C _ 8B. 45, EC
        lea     edx, [eax-3H]                           ; 022F _ 8D. 50, FD
        mov     eax, dword [ebp-14H]                    ; 0232 _ 8B. 45, EC
        sub     eax, 3                                  ; 0235 _ 83. E8, 03
        mov     dword [esp+18H], edx                    ; 0238 _ 89. 54 24, 18
        mov     dword [esp+14H], 59                     ; 023C _ C7. 44 24, 14, 0000003B
        mov     dword [esp+10H], eax                    ; 0244 _ 89. 44 24, 10
        mov     dword [esp+0CH], 2                      ; 0248 _ C7. 44 24, 0C, 00000002
        mov     dword [esp+8H], 0                       ; 0250 _ C7. 44 24, 08, 00000000
        mov     eax, dword [ebp-10H]                    ; 0258 _ 8B. 45, F0
        mov     dword [esp+4H], eax                     ; 025B _ 89. 44 24, 04
        mov     eax, dword [ebp-0CH]                    ; 025F _ 8B. 45, F4
        mov     dword [esp], eax                        ; 0262 _ 89. 04 24
        call    boxfill8                                ; 0265 _ E8, FFFFFFFC(rel)
        mov     eax, dword [ebp-14H]                    ; 026A _ 8B. 45, EC
        lea     edx, [eax-3H]                           ; 026D _ 8D. 50, FD
        mov     eax, dword [ebp-14H]                    ; 0270 _ 8B. 45, EC
        sub     eax, 24                                 ; 0273 _ 83. E8, 18
        mov     dword [esp+18H], edx                    ; 0276 _ 89. 54 24, 18
        mov     dword [esp+14H], 60                     ; 027A _ C7. 44 24, 14, 0000003C
        mov     dword [esp+10H], eax                    ; 0282 _ 89. 44 24, 10
        mov     dword [esp+0CH], 60                     ; 0286 _ C7. 44 24, 0C, 0000003C
        mov     dword [esp+8H], 0                       ; 028E _ C7. 44 24, 08, 00000000
        mov     eax, dword [ebp-10H]                    ; 0296 _ 8B. 45, F0
        mov     dword [esp+4H], eax                     ; 0299 _ 89. 44 24, 04
        mov     eax, dword [ebp-0CH]                    ; 029D _ 8B. 45, F4
        mov     dword [esp], eax                        ; 02A0 _ 89. 04 24
        call    boxfill8                                ; 02A3 _ E8, FFFFFFFC(rel)
        mov     eax, dword [ebp-14H]                    ; 02A8 _ 8B. 45, EC
        lea     ebx, [eax-18H]                          ; 02AB _ 8D. 58, E8
        mov     eax, dword [ebp-10H]                    ; 02AE _ 8B. 45, F0
        lea     ecx, [eax-4H]                           ; 02B1 _ 8D. 48, FC
        mov     eax, dword [ebp-14H]                    ; 02B4 _ 8B. 45, EC
        lea     edx, [eax-18H]                          ; 02B7 _ 8D. 50, E8
        mov     eax, dword [ebp-10H]                    ; 02BA _ 8B. 45, F0
        sub     eax, 47                                 ; 02BD _ 83. E8, 2F
        mov     dword [esp+18H], ebx                    ; 02C0 _ 89. 5C 24, 18
        mov     dword [esp+14H], ecx                    ; 02C4 _ 89. 4C 24, 14
        mov     dword [esp+10H], edx                    ; 02C8 _ 89. 54 24, 10
        mov     dword [esp+0CH], eax                    ; 02CC _ 89. 44 24, 0C
        mov     dword [esp+8H], 15                      ; 02D0 _ C7. 44 24, 08, 0000000F
        mov     eax, dword [ebp-10H]                    ; 02D8 _ 8B. 45, F0
        mov     dword [esp+4H], eax                     ; 02DB _ 89. 44 24, 04
        mov     eax, dword [ebp-0CH]                    ; 02DF _ 8B. 45, F4
        mov     dword [esp], eax                        ; 02E2 _ 89. 04 24
        call    boxfill8                                ; 02E5 _ E8, FFFFFFFC(rel)
        mov     eax, dword [ebp-14H]                    ; 02EA _ 8B. 45, EC
        lea     ebx, [eax-4H]                           ; 02ED _ 8D. 58, FC
        mov     eax, dword [ebp-10H]                    ; 02F0 _ 8B. 45, F0
        lea     ecx, [eax-2FH]                          ; 02F3 _ 8D. 48, D1
        mov     eax, dword [ebp-14H]                    ; 02F6 _ 8B. 45, EC
        lea     edx, [eax-17H]                          ; 02F9 _ 8D. 50, E9
        mov     eax, dword [ebp-10H]                    ; 02FC _ 8B. 45, F0
        sub     eax, 47                                 ; 02FF _ 83. E8, 2F
        mov     dword [esp+18H], ebx                    ; 0302 _ 89. 5C 24, 18
        mov     dword [esp+14H], ecx                    ; 0306 _ 89. 4C 24, 14
        mov     dword [esp+10H], edx                    ; 030A _ 89. 54 24, 10
        mov     dword [esp+0CH], eax                    ; 030E _ 89. 44 24, 0C
        mov     dword [esp+8H], 15                      ; 0312 _ C7. 44 24, 08, 0000000F
        mov     eax, dword [ebp-10H]                    ; 031A _ 8B. 45, F0
        mov     dword [esp+4H], eax                     ; 031D _ 89. 44 24, 04
        mov     eax, dword [ebp-0CH]                    ; 0321 _ 8B. 45, F4
        mov     dword [esp], eax                        ; 0324 _ 89. 04 24
        call    boxfill8                                ; 0327 _ E8, FFFFFFFC(rel)
        mov     eax, dword [ebp-14H]                    ; 032C _ 8B. 45, EC
        lea     ebx, [eax-3H]                           ; 032F _ 8D. 58, FD
        mov     eax, dword [ebp-10H]                    ; 0332 _ 8B. 45, F0
        lea     ecx, [eax-4H]                           ; 0335 _ 8D. 48, FC
        mov     eax, dword [ebp-14H]                    ; 0338 _ 8B. 45, EC
        lea     edx, [eax-3H]                           ; 033B _ 8D. 50, FD
        mov     eax, dword [ebp-10H]                    ; 033E _ 8B. 45, F0
        sub     eax, 47                                 ; 0341 _ 83. E8, 2F
        mov     dword [esp+18H], ebx                    ; 0344 _ 89. 5C 24, 18
        mov     dword [esp+14H], ecx                    ; 0348 _ 89. 4C 24, 14
        mov     dword [esp+10H], edx                    ; 034C _ 89. 54 24, 10
        mov     dword [esp+0CH], eax                    ; 0350 _ 89. 44 24, 0C
        mov     dword [esp+8H], 7                       ; 0354 _ C7. 44 24, 08, 00000007
        mov     eax, dword [ebp-10H]                    ; 035C _ 8B. 45, F0
        mov     dword [esp+4H], eax                     ; 035F _ 89. 44 24, 04
        mov     eax, dword [ebp-0CH]                    ; 0363 _ 8B. 45, F4
        mov     dword [esp], eax                        ; 0366 _ 89. 04 24
        call    boxfill8                                ; 0369 _ E8, FFFFFFFC(rel)
        mov     eax, dword [ebp-14H]                    ; 036E _ 8B. 45, EC
        lea     ebx, [eax-3H]                           ; 0371 _ 8D. 58, FD
        mov     eax, dword [ebp-10H]                    ; 0374 _ 8B. 45, F0
        lea     ecx, [eax-3H]                           ; 0377 _ 8D. 48, FD
        mov     eax, dword [ebp-14H]                    ; 037A _ 8B. 45, EC
        lea     edx, [eax-18H]                          ; 037D _ 8D. 50, E8
        mov     eax, dword [ebp-10H]                    ; 0380 _ 8B. 45, F0
        sub     eax, 3                                  ; 0383 _ 83. E8, 03
        mov     dword [esp+18H], ebx                    ; 0386 _ 89. 5C 24, 18
        mov     dword [esp+14H], ecx                    ; 038A _ 89. 4C 24, 14
        mov     dword [esp+10H], edx                    ; 038E _ 89. 54 24, 10
        mov     dword [esp+0CH], eax                    ; 0392 _ 89. 44 24, 0C
        mov     dword [esp+8H], 7                       ; 0396 _ C7. 44 24, 08, 00000007
        mov     eax, dword [ebp-10H]                    ; 039E _ 8B. 45, F0
        mov     dword [esp+4H], eax                     ; 03A1 _ 89. 44 24, 04
        mov     eax, dword [ebp-0CH]                    ; 03A5 _ 8B. 45, F4
        mov     dword [esp], eax                        ; 03A8 _ 89. 04 24
        call    boxfill8                                ; 03AB _ E8, FFFFFFFC(rel)
        mov     dword [esp+14H], ?_042                  ; 03B0 _ C7. 44 24, 14, 00000000(d)
        mov     dword [esp+10H], 7                      ; 03B8 _ C7. 44 24, 10, 00000007
        mov     dword [esp+0CH], 8                      ; 03C0 _ C7. 44 24, 0C, 00000008
        mov     dword [esp+8H], 8                       ; 03C8 _ C7. 44 24, 08, 00000008
        mov     eax, dword [ebp-10H]                    ; 03D0 _ 8B. 45, F0
        mov     dword [esp+4H], eax                     ; 03D3 _ 89. 44 24, 04
        mov     eax, dword [ebp-0CH]                    ; 03D7 _ 8B. 45, F4
        mov     dword [esp], eax                        ; 03DA _ 89. 04 24
        call    showString                              ; 03DD _ E8, FFFFFFFC(rel)
        mov     dword [esp+4H], 14                      ; 03E2 _ C7. 44 24, 04, 0000000E
        mov     dword [esp], mcursor                    ; 03EA _ C7. 04 24, 00000000(d)
        call    init_mouse_cursor                       ; 03F1 _ E8, FFFFFFFC(rel)
        mov     dword [esp+1CH], 16                     ; 03F6 _ C7. 44 24, 1C, 00000010
        mov     dword [esp+18H], mcursor                ; 03FE _ C7. 44 24, 18, 00000000(d)
        mov     dword [esp+14H], 80                     ; 0406 _ C7. 44 24, 14, 00000050
        mov     dword [esp+10H], 80                     ; 040E _ C7. 44 24, 10, 00000050
        mov     dword [esp+0CH], 16                     ; 0416 _ C7. 44 24, 0C, 00000010
        mov     dword [esp+8H], 16                      ; 041E _ C7. 44 24, 08, 00000010
        mov     eax, dword [ebp-10H]                    ; 0426 _ 8B. 45, F0
        mov     dword [esp+4H], eax                     ; 0429 _ 89. 44 24, 04
        mov     eax, dword [ebp-0CH]                    ; 042D _ 8B. 45, F4
        mov     dword [esp], eax                        ; 0430 _ 89. 04 24
        call    putblock                                ; 0433 _ E8, FFFFFFFC(rel)
        call    io_sti                                  ; 0438 _ E8, FFFFFFFC(rel)
        mov     dword [ebp-18H], 0                      ; 043D _ C7. 45, E8, 00000000
?_001:  call    io_cli                                  ; 0444 _ E8, FFFFFFFC(rel)
        mov     eax, dword [?_039]                      ; 0449 _ A1, 00000128(d)
        test    eax, eax                                ; 044E _ 85. C0
        jnz     ?_002                                   ; 0450 _ 75, 07
        call    io_stihlt                               ; 0452 _ E8, FFFFFFFC(rel)
        jmp     ?_001                                   ; 0457 _ EB, EB

?_002:  mov     eax, dword [?_037]                      ; 0459 _ A1, 00000120(d)
        movzx   eax, byte [keybuf+eax]                  ; 045E _ 0F B6. 80, 00000100(d)
        movzx   eax, al                                 ; 0465 _ 0F B6. C0
        mov     dword [ebp-18H], eax                    ; 0468 _ 89. 45, E8
        mov     eax, dword [?_037]                      ; 046B _ A1, 00000120(d)
        lea     edx, [eax+1H]                           ; 0470 _ 8D. 50, 01
        mov     eax, edx                                ; 0473 _ 89. D0
        sar     eax, 31                                 ; 0475 _ C1. F8, 1F
        shr     eax, 27                                 ; 0478 _ C1. E8, 1B
        add     edx, eax                                ; 047B _ 01. C2
        and     edx, 1FH                                ; 047D _ 83. E2, 1F
        sub     edx, eax                                ; 0480 _ 29. C2
        mov     eax, edx                                ; 0482 _ 89. D0
        mov     dword [?_037], eax                      ; 0484 _ A3, 00000120(d)
        call    io_sti                                  ; 0489 _ E8, FFFFFFFC(rel)
        mov     eax, dword [?_039]                      ; 048E _ A1, 00000128(d)
        sub     eax, 1                                  ; 0493 _ 83. E8, 01
        mov     dword [?_039], eax                      ; 0496 _ A3, 00000128(d)
        mov     eax, dword [ebp-18H]                    ; 049B _ 8B. 45, E8
        movzx   eax, al                                 ; 049E _ 0F B6. C0
        mov     dword [esp], eax                        ; 04A1 _ 89. 04 24
        call    charToHexStr                            ; 04A4 _ E8, FFFFFFFC(rel)
        mov     dword [ebp-1CH], eax                    ; 04A9 _ 89. 45, E4
        mov     eax, dword [showPos.1777]               ; 04AC _ A1, 00000134(d)
        mov     edx, dword [ebp-1CH]                    ; 04B1 _ 8B. 55, E4
        mov     dword [esp+14H], edx                    ; 04B4 _ 89. 54 24, 14
        mov     dword [esp+10H], 7                      ; 04B8 _ C7. 44 24, 10, 00000007
        mov     dword [esp+0CH], 0                      ; 04C0 _ C7. 44 24, 0C, 00000000
        mov     dword [esp+8H], eax                     ; 04C8 _ 89. 44 24, 08
        mov     eax, dword [ebp-10H]                    ; 04CC _ 8B. 45, F0
        mov     dword [esp+4H], eax                     ; 04CF _ 89. 44 24, 04
        mov     eax, dword [ebp-0CH]                    ; 04D3 _ 8B. 45, F4
        mov     dword [esp], eax                        ; 04D6 _ 89. 04 24
        call    showString                              ; 04D9 _ E8, FFFFFFFC(rel)
        mov     eax, dword [showPos.1777]               ; 04DE _ A1, 00000134(d)
        add     eax, 32                                 ; 04E3 _ 83. C0, 20
        mov     dword [showPos.1777], eax               ; 04E6 _ A3, 00000134(d)
        jmp     ?_001                                   ; 04EB _ E9, FFFFFF54
; CMain End of function

initBootInfo:; Function begin
        push    ebp                                     ; 04F0 _ 55
        mov     ebp, esp                                ; 04F1 _ 89. E5
        mov     eax, dword [ebp+8H]                     ; 04F3 _ 8B. 45, 08
        mov     dword [eax], 655360                     ; 04F6 _ C7. 00, 000A0000
        mov     eax, dword [ebp+8H]                     ; 04FC _ 8B. 45, 08
; Note: Length-changing prefix causes delay on Intel processors
        mov     word [eax+4H], 320                      ; 04FF _ 66: C7. 40, 04, 0140
        mov     eax, dword [ebp+8H]                     ; 0505 _ 8B. 45, 08
; Note: Length-changing prefix causes delay on Intel processors
        mov     word [eax+6H], 200                      ; 0508 _ 66: C7. 40, 06, 00C8
        pop     ebp                                     ; 050E _ 5D
        ret                                             ; 050F _ C3
; initBootInfo End of function

init_palette:; Function begin
        push    ebp                                     ; 0510 _ 55
        mov     ebp, esp                                ; 0511 _ 89. E5
        sub     esp, 24                                 ; 0513 _ 83. EC, 18
        mov     dword [esp+8H], table_rgb.1786          ; 0516 _ C7. 44 24, 08, 00000020(d)
        mov     dword [esp+4H], 15                      ; 051E _ C7. 44 24, 04, 0000000F
        mov     dword [esp], 0                          ; 0526 _ C7. 04 24, 00000000
        call    set_palette                             ; 052D _ E8, FFFFFFFC(rel)
        nop                                             ; 0532 _ 90
        leave                                           ; 0533 _ C9
        ret                                             ; 0534 _ C3
; init_palette End of function

set_palette:; Function begin
        push    ebp                                     ; 0535 _ 55
        mov     ebp, esp                                ; 0536 _ 89. E5
        sub     esp, 40                                 ; 0538 _ 83. EC, 28
        call    io_load_eflags                          ; 053B _ E8, FFFFFFFC(rel)
        mov     dword [ebp-10H], eax                    ; 0540 _ 89. 45, F0
        call    io_cli                                  ; 0543 _ E8, FFFFFFFC(rel)
        mov     eax, dword [ebp+8H]                     ; 0548 _ 8B. 45, 08
        mov     dword [esp+4H], eax                     ; 054B _ 89. 44 24, 04
        mov     dword [esp], 968                        ; 054F _ C7. 04 24, 000003C8
        call    io_out8                                 ; 0556 _ E8, FFFFFFFC(rel)
        mov     eax, dword [ebp+8H]                     ; 055B _ 8B. 45, 08
        mov     dword [ebp-0CH], eax                    ; 055E _ 89. 45, F4
        jmp     ?_004                                   ; 0561 _ EB, 62

?_003:  mov     eax, dword [ebp+10H]                    ; 0563 _ 8B. 45, 10
        movzx   eax, byte [eax]                         ; 0566 _ 0F B6. 00
        shr     al, 2                                   ; 0569 _ C0. E8, 02
        movzx   eax, al                                 ; 056C _ 0F B6. C0
        mov     dword [esp+4H], eax                     ; 056F _ 89. 44 24, 04
        mov     dword [esp], 969                        ; 0573 _ C7. 04 24, 000003C9
        call    io_out8                                 ; 057A _ E8, FFFFFFFC(rel)
        mov     eax, dword [ebp+10H]                    ; 057F _ 8B. 45, 10
        add     eax, 1                                  ; 0582 _ 83. C0, 01
        movzx   eax, byte [eax]                         ; 0585 _ 0F B6. 00
        shr     al, 2                                   ; 0588 _ C0. E8, 02
        movzx   eax, al                                 ; 058B _ 0F B6. C0
        mov     dword [esp+4H], eax                     ; 058E _ 89. 44 24, 04
        mov     dword [esp], 969                        ; 0592 _ C7. 04 24, 000003C9
        call    io_out8                                 ; 0599 _ E8, FFFFFFFC(rel)
        mov     eax, dword [ebp+10H]                    ; 059E _ 8B. 45, 10
        add     eax, 2                                  ; 05A1 _ 83. C0, 02
        movzx   eax, byte [eax]                         ; 05A4 _ 0F B6. 00
        shr     al, 2                                   ; 05A7 _ C0. E8, 02
        movzx   eax, al                                 ; 05AA _ 0F B6. C0
        mov     dword [esp+4H], eax                     ; 05AD _ 89. 44 24, 04
        mov     dword [esp], 969                        ; 05B1 _ C7. 04 24, 000003C9
        call    io_out8                                 ; 05B8 _ E8, FFFFFFFC(rel)
        add     dword [ebp+10H], 3                      ; 05BD _ 83. 45, 10, 03
        add     dword [ebp-0CH], 1                      ; 05C1 _ 83. 45, F4, 01
?_004:  mov     eax, dword [ebp-0CH]                    ; 05C5 _ 8B. 45, F4
        cmp     eax, dword [ebp+0CH]                    ; 05C8 _ 3B. 45, 0C
        jle     ?_003                                   ; 05CB _ 7E, 96
        mov     eax, dword [ebp-10H]                    ; 05CD _ 8B. 45, F0
        mov     dword [esp], eax                        ; 05D0 _ 89. 04 24
        call    io_store_eflags                         ; 05D3 _ E8, FFFFFFFC(rel)
        nop                                             ; 05D8 _ 90
        leave                                           ; 05D9 _ C9
        ret                                             ; 05DA _ C3
; set_palette End of function

boxfill8:; Function begin
        push    ebp                                     ; 05DB _ 55
        mov     ebp, esp                                ; 05DC _ 89. E5
        sub     esp, 20                                 ; 05DE _ 83. EC, 14
        mov     eax, dword [ebp+10H]                    ; 05E1 _ 8B. 45, 10
        mov     byte [ebp-14H], al                      ; 05E4 _ 88. 45, EC
        mov     eax, dword [ebp+18H]                    ; 05E7 _ 8B. 45, 18
        mov     dword [ebp-8H], eax                     ; 05EA _ 89. 45, F8
        jmp     ?_008                                   ; 05ED _ EB, 33

?_005:  mov     eax, dword [ebp+14H]                    ; 05EF _ 8B. 45, 14
        mov     dword [ebp-4H], eax                     ; 05F2 _ 89. 45, FC
        jmp     ?_007                                   ; 05F5 _ EB, 1F

?_006:  mov     eax, dword [ebp-8H]                     ; 05F7 _ 8B. 45, F8
        imul    eax, dword [ebp+0CH]                    ; 05FA _ 0F AF. 45, 0C
        mov     edx, eax                                ; 05FE _ 89. C2
        mov     eax, dword [ebp-4H]                     ; 0600 _ 8B. 45, FC
        add     eax, edx                                ; 0603 _ 01. D0
        mov     edx, eax                                ; 0605 _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 0607 _ 8B. 45, 08
        add     edx, eax                                ; 060A _ 01. C2
        movzx   eax, byte [ebp-14H]                     ; 060C _ 0F B6. 45, EC
        mov     byte [edx], al                          ; 0610 _ 88. 02
        add     dword [ebp-4H], 1                       ; 0612 _ 83. 45, FC, 01
?_007:  mov     eax, dword [ebp-4H]                     ; 0616 _ 8B. 45, FC
        cmp     eax, dword [ebp+1CH]                    ; 0619 _ 3B. 45, 1C
        jle     ?_006                                   ; 061C _ 7E, D9
        add     dword [ebp-8H], 1                       ; 061E _ 83. 45, F8, 01
?_008:  mov     eax, dword [ebp-8H]                     ; 0622 _ 8B. 45, F8
        cmp     eax, dword [ebp+20H]                    ; 0625 _ 3B. 45, 20
        jle     ?_005                                   ; 0628 _ 7E, C5
        leave                                           ; 062A _ C9
        ret                                             ; 062B _ C3
; boxfill8 End of function

showFont8:; Function begin
        push    ebp                                     ; 062C _ 55
        mov     ebp, esp                                ; 062D _ 89. E5
        sub     esp, 20                                 ; 062F _ 83. EC, 14
        mov     eax, dword [ebp+18H]                    ; 0632 _ 8B. 45, 18
        mov     byte [ebp-14H], al                      ; 0635 _ 88. 45, EC
        mov     dword [ebp-4H], 0                       ; 0638 _ C7. 45, FC, 00000000
        jmp     ?_018                                   ; 063F _ E9, 0000016C

?_009:  mov     edx, dword [ebp-4H]                     ; 0644 _ 8B. 55, FC
        mov     eax, dword [ebp+1CH]                    ; 0647 _ 8B. 45, 1C
        add     eax, edx                                ; 064A _ 01. D0
        movzx   eax, byte [eax]                         ; 064C _ 0F B6. 00
        mov     byte [ebp-5H], al                       ; 064F _ 88. 45, FB
        cmp     byte [ebp-5H], 0                        ; 0652 _ 80. 7D, FB, 00
        jns     ?_010                                   ; 0656 _ 79, 20
        mov     eax, dword [ebp-4H]                     ; 0658 _ 8B. 45, FC
        mov     edx, dword [ebp+14H]                    ; 065B _ 8B. 55, 14
        add     eax, edx                                ; 065E _ 01. D0
        imul    eax, dword [ebp+0CH]                    ; 0660 _ 0F AF. 45, 0C
        mov     edx, eax                                ; 0664 _ 89. C2
        mov     eax, dword [ebp+10H]                    ; 0666 _ 8B. 45, 10
        add     eax, edx                                ; 0669 _ 01. D0
        mov     edx, eax                                ; 066B _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 066D _ 8B. 45, 08
        add     edx, eax                                ; 0670 _ 01. C2
        movzx   eax, byte [ebp-14H]                     ; 0672 _ 0F B6. 45, EC
        mov     byte [edx], al                          ; 0676 _ 88. 02
?_010:  movsx   eax, byte [ebp-5H]                      ; 0678 _ 0F BE. 45, FB
        and     eax, 40H                                ; 067C _ 83. E0, 40
        test    eax, eax                                ; 067F _ 85. C0
        jz      ?_011                                   ; 0681 _ 74, 21
        mov     eax, dword [ebp-4H]                     ; 0683 _ 8B. 45, FC
        mov     edx, dword [ebp+14H]                    ; 0686 _ 8B. 55, 14
        add     eax, edx                                ; 0689 _ 01. D0
        imul    eax, dword [ebp+0CH]                    ; 068B _ 0F AF. 45, 0C
        mov     edx, eax                                ; 068F _ 89. C2
        mov     eax, dword [ebp+10H]                    ; 0691 _ 8B. 45, 10
        add     eax, edx                                ; 0694 _ 01. D0
        lea     edx, [eax+1H]                           ; 0696 _ 8D. 50, 01
        mov     eax, dword [ebp+8H]                     ; 0699 _ 8B. 45, 08
        add     edx, eax                                ; 069C _ 01. C2
        movzx   eax, byte [ebp-14H]                     ; 069E _ 0F B6. 45, EC
        mov     byte [edx], al                          ; 06A2 _ 88. 02
?_011:  movsx   eax, byte [ebp-5H]                      ; 06A4 _ 0F BE. 45, FB
        and     eax, 20H                                ; 06A8 _ 83. E0, 20
        test    eax, eax                                ; 06AB _ 85. C0
        jz      ?_012                                   ; 06AD _ 74, 21
        mov     eax, dword [ebp-4H]                     ; 06AF _ 8B. 45, FC
        mov     edx, dword [ebp+14H]                    ; 06B2 _ 8B. 55, 14
        add     eax, edx                                ; 06B5 _ 01. D0
        imul    eax, dword [ebp+0CH]                    ; 06B7 _ 0F AF. 45, 0C
        mov     edx, eax                                ; 06BB _ 89. C2
        mov     eax, dword [ebp+10H]                    ; 06BD _ 8B. 45, 10
        add     eax, edx                                ; 06C0 _ 01. D0
        lea     edx, [eax+2H]                           ; 06C2 _ 8D. 50, 02
        mov     eax, dword [ebp+8H]                     ; 06C5 _ 8B. 45, 08
        add     edx, eax                                ; 06C8 _ 01. C2
        movzx   eax, byte [ebp-14H]                     ; 06CA _ 0F B6. 45, EC
        mov     byte [edx], al                          ; 06CE _ 88. 02
?_012:  movsx   eax, byte [ebp-5H]                      ; 06D0 _ 0F BE. 45, FB
        and     eax, 10H                                ; 06D4 _ 83. E0, 10
        test    eax, eax                                ; 06D7 _ 85. C0
        jz      ?_013                                   ; 06D9 _ 74, 21
        mov     eax, dword [ebp-4H]                     ; 06DB _ 8B. 45, FC
        mov     edx, dword [ebp+14H]                    ; 06DE _ 8B. 55, 14
        add     eax, edx                                ; 06E1 _ 01. D0
        imul    eax, dword [ebp+0CH]                    ; 06E3 _ 0F AF. 45, 0C
        mov     edx, eax                                ; 06E7 _ 89. C2
        mov     eax, dword [ebp+10H]                    ; 06E9 _ 8B. 45, 10
        add     eax, edx                                ; 06EC _ 01. D0
        lea     edx, [eax+3H]                           ; 06EE _ 8D. 50, 03
        mov     eax, dword [ebp+8H]                     ; 06F1 _ 8B. 45, 08
        add     edx, eax                                ; 06F4 _ 01. C2
        movzx   eax, byte [ebp-14H]                     ; 06F6 _ 0F B6. 45, EC
        mov     byte [edx], al                          ; 06FA _ 88. 02
?_013:  movsx   eax, byte [ebp-5H]                      ; 06FC _ 0F BE. 45, FB
        and     eax, 08H                                ; 0700 _ 83. E0, 08
        test    eax, eax                                ; 0703 _ 85. C0
        jz      ?_014                                   ; 0705 _ 74, 21
        mov     eax, dword [ebp-4H]                     ; 0707 _ 8B. 45, FC
        mov     edx, dword [ebp+14H]                    ; 070A _ 8B. 55, 14
        add     eax, edx                                ; 070D _ 01. D0
        imul    eax, dword [ebp+0CH]                    ; 070F _ 0F AF. 45, 0C
        mov     edx, eax                                ; 0713 _ 89. C2
        mov     eax, dword [ebp+10H]                    ; 0715 _ 8B. 45, 10
        add     eax, edx                                ; 0718 _ 01. D0
        lea     edx, [eax+4H]                           ; 071A _ 8D. 50, 04
        mov     eax, dword [ebp+8H]                     ; 071D _ 8B. 45, 08
        add     edx, eax                                ; 0720 _ 01. C2
        movzx   eax, byte [ebp-14H]                     ; 0722 _ 0F B6. 45, EC
        mov     byte [edx], al                          ; 0726 _ 88. 02
?_014:  movsx   eax, byte [ebp-5H]                      ; 0728 _ 0F BE. 45, FB
        and     eax, 04H                                ; 072C _ 83. E0, 04
        test    eax, eax                                ; 072F _ 85. C0
        jz      ?_015                                   ; 0731 _ 74, 21
        mov     eax, dword [ebp-4H]                     ; 0733 _ 8B. 45, FC
        mov     edx, dword [ebp+14H]                    ; 0736 _ 8B. 55, 14
        add     eax, edx                                ; 0739 _ 01. D0
        imul    eax, dword [ebp+0CH]                    ; 073B _ 0F AF. 45, 0C
        mov     edx, eax                                ; 073F _ 89. C2
        mov     eax, dword [ebp+10H]                    ; 0741 _ 8B. 45, 10
        add     eax, edx                                ; 0744 _ 01. D0
        lea     edx, [eax+5H]                           ; 0746 _ 8D. 50, 05
        mov     eax, dword [ebp+8H]                     ; 0749 _ 8B. 45, 08
        add     edx, eax                                ; 074C _ 01. C2
        movzx   eax, byte [ebp-14H]                     ; 074E _ 0F B6. 45, EC
        mov     byte [edx], al                          ; 0752 _ 88. 02
?_015:  movsx   eax, byte [ebp-5H]                      ; 0754 _ 0F BE. 45, FB
        and     eax, 02H                                ; 0758 _ 83. E0, 02
        test    eax, eax                                ; 075B _ 85. C0
        jz      ?_016                                   ; 075D _ 74, 21
        mov     eax, dword [ebp-4H]                     ; 075F _ 8B. 45, FC
        mov     edx, dword [ebp+14H]                    ; 0762 _ 8B. 55, 14
        add     eax, edx                                ; 0765 _ 01. D0
        imul    eax, dword [ebp+0CH]                    ; 0767 _ 0F AF. 45, 0C
        mov     edx, eax                                ; 076B _ 89. C2
        mov     eax, dword [ebp+10H]                    ; 076D _ 8B. 45, 10
        add     eax, edx                                ; 0770 _ 01. D0
        lea     edx, [eax+6H]                           ; 0772 _ 8D. 50, 06
        mov     eax, dword [ebp+8H]                     ; 0775 _ 8B. 45, 08
        add     edx, eax                                ; 0778 _ 01. C2
        movzx   eax, byte [ebp-14H]                     ; 077A _ 0F B6. 45, EC
        mov     byte [edx], al                          ; 077E _ 88. 02
?_016:  movsx   eax, byte [ebp-5H]                      ; 0780 _ 0F BE. 45, FB
        and     eax, 01H                                ; 0784 _ 83. E0, 01
        test    eax, eax                                ; 0787 _ 85. C0
        jz      ?_017                                   ; 0789 _ 74, 21
        mov     eax, dword [ebp-4H]                     ; 078B _ 8B. 45, FC
        mov     edx, dword [ebp+14H]                    ; 078E _ 8B. 55, 14
        add     eax, edx                                ; 0791 _ 01. D0
        imul    eax, dword [ebp+0CH]                    ; 0793 _ 0F AF. 45, 0C
        mov     edx, eax                                ; 0797 _ 89. C2
        mov     eax, dword [ebp+10H]                    ; 0799 _ 8B. 45, 10
        add     eax, edx                                ; 079C _ 01. D0
        lea     edx, [eax+7H]                           ; 079E _ 8D. 50, 07
        mov     eax, dword [ebp+8H]                     ; 07A1 _ 8B. 45, 08
        add     edx, eax                                ; 07A4 _ 01. C2
        movzx   eax, byte [ebp-14H]                     ; 07A6 _ 0F B6. 45, EC
        mov     byte [edx], al                          ; 07AA _ 88. 02
?_017:  add     dword [ebp-4H], 1                       ; 07AC _ 83. 45, FC, 01
?_018:  cmp     dword [ebp-4H], 15                      ; 07B0 _ 83. 7D, FC, 0F
        jle     ?_009                                   ; 07B4 _ 0F 8E, FFFFFE8A
        leave                                           ; 07BA _ C9
        ret                                             ; 07BB _ C3
; showFont8 End of function

showString:; Function begin
        push    ebp                                     ; 07BC _ 55
        mov     ebp, esp                                ; 07BD _ 89. E5
        sub     esp, 28                                 ; 07BF _ 83. EC, 1C
        mov     eax, dword [ebp+18H]                    ; 07C2 _ 8B. 45, 18
        mov     byte [ebp-4H], al                       ; 07C5 _ 88. 45, FC
        jmp     ?_020                                   ; 07C8 _ EB, 49

?_019:  mov     eax, dword [ebp+1CH]                    ; 07CA _ 8B. 45, 1C
        movzx   eax, byte [eax]                         ; 07CD _ 0F B6. 00
        movzx   eax, al                                 ; 07D0 _ 0F B6. C0
        sub     eax, 32                                 ; 07D3 _ 83. E8, 20
        shl     eax, 4                                  ; 07D6 _ C1. E0, 04
        lea     edx, [systemFont+eax]                   ; 07D9 _ 8D. 90, 00000000(d)
        movsx   eax, byte [ebp-4H]                      ; 07DF _ 0F BE. 45, FC
        mov     dword [esp+14H], edx                    ; 07E3 _ 89. 54 24, 14
        mov     dword [esp+10H], eax                    ; 07E7 _ 89. 44 24, 10
        mov     eax, dword [ebp+14H]                    ; 07EB _ 8B. 45, 14
        mov     dword [esp+0CH], eax                    ; 07EE _ 89. 44 24, 0C
        mov     eax, dword [ebp+10H]                    ; 07F2 _ 8B. 45, 10
        mov     dword [esp+8H], eax                     ; 07F5 _ 89. 44 24, 08
        mov     eax, dword [ebp+0CH]                    ; 07F9 _ 8B. 45, 0C
        mov     dword [esp+4H], eax                     ; 07FC _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 0800 _ 8B. 45, 08
        mov     dword [esp], eax                        ; 0803 _ 89. 04 24
        call    showFont8                               ; 0806 _ E8, FFFFFFFC(rel)
        add     dword [ebp+10H], 8                      ; 080B _ 83. 45, 10, 08
        add     dword [ebp+1CH], 1                      ; 080F _ 83. 45, 1C, 01
?_020:  mov     eax, dword [ebp+1CH]                    ; 0813 _ 8B. 45, 1C
        movzx   eax, byte [eax]                         ; 0816 _ 0F B6. 00
        test    al, al                                  ; 0819 _ 84. C0
        jnz     ?_019                                   ; 081B _ 75, AD
        leave                                           ; 081D _ C9
        ret                                             ; 081E _ C3
; showString End of function

init_mouse_cursor:; Function begin
        push    ebp                                     ; 081F _ 55
        mov     ebp, esp                                ; 0820 _ 89. E5
        sub     esp, 20                                 ; 0822 _ 83. EC, 14
        mov     eax, dword [ebp+0CH]                    ; 0825 _ 8B. 45, 0C
        mov     byte [ebp-14H], al                      ; 0828 _ 88. 45, EC
        mov     dword [ebp-8H], 0                       ; 082B _ C7. 45, F8, 00000000
        jmp     ?_027                                   ; 0832 _ E9, 000000B1

?_021:  mov     dword [ebp-4H], 0                       ; 0837 _ C7. 45, FC, 00000000
        jmp     ?_026                                   ; 083E _ E9, 00000097

?_022:  mov     eax, dword [ebp-8H]                     ; 0843 _ 8B. 45, F8
        shl     eax, 4                                  ; 0846 _ C1. E0, 04
        mov     edx, eax                                ; 0849 _ 89. C2
        mov     eax, dword [ebp-4H]                     ; 084B _ 8B. 45, FC
        add     eax, edx                                ; 084E _ 01. D0
        add     eax, cursor.1844                        ; 0850 _ 05, 00000060(d)
        movzx   eax, byte [eax]                         ; 0855 _ 0F B6. 00
        cmp     al, 42                                  ; 0858 _ 3C, 2A
        jnz     ?_023                                   ; 085A _ 75, 17
        mov     eax, dword [ebp-8H]                     ; 085C _ 8B. 45, F8
        shl     eax, 4                                  ; 085F _ C1. E0, 04
        mov     edx, eax                                ; 0862 _ 89. C2
        mov     eax, dword [ebp-4H]                     ; 0864 _ 8B. 45, FC
        add     eax, edx                                ; 0867 _ 01. D0
        mov     edx, eax                                ; 0869 _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 086B _ 8B. 45, 08
        add     eax, edx                                ; 086E _ 01. D0
        mov     byte [eax], 0                           ; 0870 _ C6. 00, 00
?_023:  mov     eax, dword [ebp-8H]                     ; 0873 _ 8B. 45, F8
        shl     eax, 4                                  ; 0876 _ C1. E0, 04
        mov     edx, eax                                ; 0879 _ 89. C2
        mov     eax, dword [ebp-4H]                     ; 087B _ 8B. 45, FC
        add     eax, edx                                ; 087E _ 01. D0
        add     eax, cursor.1844                        ; 0880 _ 05, 00000060(d)
        movzx   eax, byte [eax]                         ; 0885 _ 0F B6. 00
        cmp     al, 79                                  ; 0888 _ 3C, 4F
        jnz     ?_024                                   ; 088A _ 75, 17
        mov     eax, dword [ebp-8H]                     ; 088C _ 8B. 45, F8
        shl     eax, 4                                  ; 088F _ C1. E0, 04
        mov     edx, eax                                ; 0892 _ 89. C2
        mov     eax, dword [ebp-4H]                     ; 0894 _ 8B. 45, FC
        add     eax, edx                                ; 0897 _ 01. D0
        mov     edx, eax                                ; 0899 _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 089B _ 8B. 45, 08
        add     eax, edx                                ; 089E _ 01. D0
        mov     byte [eax], 7                           ; 08A0 _ C6. 00, 07
?_024:  mov     eax, dword [ebp-8H]                     ; 08A3 _ 8B. 45, F8
        shl     eax, 4                                  ; 08A6 _ C1. E0, 04
        mov     edx, eax                                ; 08A9 _ 89. C2
        mov     eax, dword [ebp-4H]                     ; 08AB _ 8B. 45, FC
        add     eax, edx                                ; 08AE _ 01. D0
        add     eax, cursor.1844                        ; 08B0 _ 05, 00000060(d)
        movzx   eax, byte [eax]                         ; 08B5 _ 0F B6. 00
        cmp     al, 46                                  ; 08B8 _ 3C, 2E
        jnz     ?_025                                   ; 08BA _ 75, 1A
        mov     eax, dword [ebp-8H]                     ; 08BC _ 8B. 45, F8
        shl     eax, 4                                  ; 08BF _ C1. E0, 04
        mov     edx, eax                                ; 08C2 _ 89. C2
        mov     eax, dword [ebp-4H]                     ; 08C4 _ 8B. 45, FC
        add     eax, edx                                ; 08C7 _ 01. D0
        mov     edx, eax                                ; 08C9 _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 08CB _ 8B. 45, 08
        add     edx, eax                                ; 08CE _ 01. C2
        movzx   eax, byte [ebp-14H]                     ; 08D0 _ 0F B6. 45, EC
        mov     byte [edx], al                          ; 08D4 _ 88. 02
?_025:  add     dword [ebp-4H], 1                       ; 08D6 _ 83. 45, FC, 01
?_026:  cmp     dword [ebp-4H], 15                      ; 08DA _ 83. 7D, FC, 0F
        jle     ?_022                                   ; 08DE _ 0F 8E, FFFFFF5F
        add     dword [ebp-8H], 1                       ; 08E4 _ 83. 45, F8, 01
?_027:  cmp     dword [ebp-8H], 15                      ; 08E8 _ 83. 7D, F8, 0F
        jle     ?_021                                   ; 08EC _ 0F 8E, FFFFFF45
        leave                                           ; 08F2 _ C9
        ret                                             ; 08F3 _ C3
; init_mouse_cursor End of function

putblock:; Function begin
        push    ebp                                     ; 08F4 _ 55
        mov     ebp, esp                                ; 08F5 _ 89. E5
        sub     esp, 16                                 ; 08F7 _ 83. EC, 10
        mov     dword [ebp-8H], 0                       ; 08FA _ C7. 45, F8, 00000000
        jmp     ?_031                                   ; 0901 _ EB, 50

?_028:  mov     dword [ebp-4H], 0                       ; 0903 _ C7. 45, FC, 00000000
        jmp     ?_030                                   ; 090A _ EB, 3B

?_029:  mov     eax, dword [ebp-8H]                     ; 090C _ 8B. 45, F8
        mov     edx, dword [ebp+1CH]                    ; 090F _ 8B. 55, 1C
        add     eax, edx                                ; 0912 _ 01. D0
        imul    eax, dword [ebp+0CH]                    ; 0914 _ 0F AF. 45, 0C
        mov     edx, dword [ebp-4H]                     ; 0918 _ 8B. 55, FC
        mov     ecx, dword [ebp+18H]                    ; 091B _ 8B. 4D, 18
        add     edx, ecx                                ; 091E _ 01. CA
        add     eax, edx                                ; 0920 _ 01. D0
        mov     edx, eax                                ; 0922 _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 0924 _ 8B. 45, 08
        add     edx, eax                                ; 0927 _ 01. C2
        mov     eax, dword [ebp-8H]                     ; 0929 _ 8B. 45, F8
        imul    eax, dword [ebp+24H]                    ; 092C _ 0F AF. 45, 24
        mov     ecx, eax                                ; 0930 _ 89. C1
        mov     eax, dword [ebp-4H]                     ; 0932 _ 8B. 45, FC
        add     eax, ecx                                ; 0935 _ 01. C8
        mov     ecx, eax                                ; 0937 _ 89. C1
        mov     eax, dword [ebp+20H]                    ; 0939 _ 8B. 45, 20
        add     eax, ecx                                ; 093C _ 01. C8
        movzx   eax, byte [eax]                         ; 093E _ 0F B6. 00
        mov     byte [edx], al                          ; 0941 _ 88. 02
        add     dword [ebp-4H], 1                       ; 0943 _ 83. 45, FC, 01
?_030:  mov     eax, dword [ebp-4H]                     ; 0947 _ 8B. 45, FC
        cmp     eax, dword [ebp+10H]                    ; 094A _ 3B. 45, 10
        jl      ?_029                                   ; 094D _ 7C, BD
        add     dword [ebp-8H], 1                       ; 094F _ 83. 45, F8, 01
?_031:  mov     eax, dword [ebp-8H]                     ; 0953 _ 8B. 45, F8
        cmp     eax, dword [ebp+14H]                    ; 0956 _ 3B. 45, 14
        jl      ?_028                                   ; 0959 _ 7C, A8
        leave                                           ; 095B _ C9
        ret                                             ; 095C _ C3
; putblock End of function

intHandlerFromC:; Function begin
        push    ebp                                     ; 095D _ 55
        mov     ebp, esp                                ; 095E _ 89. E5
        sub     esp, 40                                 ; 0960 _ 83. EC, 28
        mov     eax, dword [bootInfo]                   ; 0963 _ A1, 0000012C(d)
        mov     dword [ebp-0CH], eax                    ; 0968 _ 89. 45, F4
        movzx   eax, word [?_040]                       ; 096B _ 0F B7. 05, 00000130(d)
        cwde                                            ; 0972 _ 98
        mov     dword [ebp-10H], eax                    ; 0973 _ 89. 45, F0
        movzx   eax, word [?_041]                       ; 0976 _ 0F B7. 05, 00000132(d)
        cwde                                            ; 097D _ 98
        mov     dword [ebp-14H], eax                    ; 097E _ 89. 45, EC
        mov     dword [esp+4H], 33                      ; 0981 _ C7. 44 24, 04, 00000021
        mov     dword [esp], 32                         ; 0989 _ C7. 04 24, 00000020
        call    io_out8                                 ; 0990 _ E8, FFFFFFFC(rel)
        mov     byte [ebp-15H], 0                       ; 0995 _ C6. 45, EB, 00
        mov     dword [esp], 96                         ; 0999 _ C7. 04 24, 00000060
        call    io_in8                                  ; 09A0 _ E8, FFFFFFFC(rel)
        mov     byte [ebp-15H], al                      ; 09A5 _ 88. 45, EB
        mov     eax, dword [?_039]                      ; 09A8 _ A1, 00000128(d)
        cmp     eax, 31                                 ; 09AD _ 83. F8, 1F
        jg      ?_032                                   ; 09B0 _ 7F, 3A
        mov     eax, dword [?_038]                      ; 09B2 _ A1, 00000124(d)
        movzx   edx, byte [ebp-15H]                     ; 09B7 _ 0F B6. 55, EB
        mov     byte [keybuf+eax], dl                   ; 09BB _ 88. 90, 00000100(d)
        mov     eax, dword [?_039]                      ; 09C1 _ A1, 00000128(d)
        add     eax, 1                                  ; 09C6 _ 83. C0, 01
        mov     dword [?_039], eax                      ; 09C9 _ A3, 00000128(d)
        mov     eax, dword [?_038]                      ; 09CE _ A1, 00000124(d)
        lea     edx, [eax+1H]                           ; 09D3 _ 8D. 50, 01
        mov     eax, edx                                ; 09D6 _ 89. D0
        sar     eax, 31                                 ; 09D8 _ C1. F8, 1F
        shr     eax, 27                                 ; 09DB _ C1. E8, 1B
        add     edx, eax                                ; 09DE _ 01. C2
        and     edx, 1FH                                ; 09E0 _ 83. E2, 1F
        sub     edx, eax                                ; 09E3 _ 29. C2
        mov     eax, edx                                ; 09E5 _ 89. D0
        mov     dword [?_038], eax                      ; 09E7 _ A3, 00000124(d)
?_032:  leave                                           ; 09EC _ C9
        ret                                             ; 09ED _ C3
; intHandlerFromC End of function

charToHexVal:; Function begin
        push    ebp                                     ; 09EE _ 55
        mov     ebp, esp                                ; 09EF _ 89. E5
        sub     esp, 4                                  ; 09F1 _ 83. EC, 04
        mov     eax, dword [ebp+8H]                     ; 09F4 _ 8B. 45, 08
        mov     byte [ebp-4H], al                       ; 09F7 _ 88. 45, FC
        cmp     byte [ebp-4H], 9                        ; 09FA _ 80. 7D, FC, 09
        jle     ?_033                                   ; 09FE _ 7E, 09
        movzx   eax, byte [ebp-4H]                      ; 0A00 _ 0F B6. 45, FC
        add     eax, 55                                 ; 0A04 _ 83. C0, 37
        jmp     ?_034                                   ; 0A07 _ EB, 07

?_033:  movzx   eax, byte [ebp-4H]                      ; 0A09 _ 0F B6. 45, FC
        add     eax, 48                                 ; 0A0D _ 83. C0, 30
?_034:  leave                                           ; 0A10 _ C9
        ret                                             ; 0A11 _ C3
; charToHexVal End of function

charToHexStr:; Function begin
        push    ebp                                     ; 0A12 _ 55
        mov     ebp, esp                                ; 0A13 _ 89. E5
        sub     esp, 24                                 ; 0A15 _ 83. EC, 18
        mov     eax, dword [ebp+8H]                     ; 0A18 _ 8B. 45, 08
        mov     byte [ebp-14H], al                      ; 0A1B _ 88. 45, EC
        mov     dword [ebp-4H], 0                       ; 0A1E _ C7. 45, FC, 00000000
        movzx   eax, byte [ebp-14H]                     ; 0A25 _ 0F B6. 45, EC
        and     eax, 0FH                                ; 0A29 _ 83. E0, 0F
        mov     byte [ebp-5H], al                       ; 0A2C _ 88. 45, FB
        movsx   eax, byte [ebp-5H]                      ; 0A2F _ 0F BE. 45, FB
        mov     dword [esp], eax                        ; 0A33 _ 89. 04 24
        call    charToHexVal                            ; 0A36 _ E8, FFFFFFFC(rel)
        mov     byte [?_036], al                        ; 0A3B _ A2, 00000013(d)
        movzx   eax, byte [ebp-14H]                     ; 0A40 _ 0F B6. 45, EC
        shr     al, 4                                   ; 0A44 _ C0. E8, 04
        mov     byte [ebp-14H], al                      ; 0A47 _ 88. 45, EC
        movzx   eax, byte [ebp-14H]                     ; 0A4A _ 0F B6. 45, EC
        movsx   eax, al                                 ; 0A4E _ 0F BE. C0
        mov     dword [esp], eax                        ; 0A51 _ 89. 04 24
        call    charToHexVal                            ; 0A54 _ E8, FFFFFFFC(rel)
        mov     byte [?_035], al                        ; 0A59 _ A2, 00000012(d)
        mov     eax, keyval                             ; 0A5E _ B8, 00000010(d)
        leave                                           ; 0A63 _ C9
        ret                                             ; 0A64 _ C3
; charToHexStr End of function


;SECTION .data   align=32 noexecute                      ; section number 2, data

fontA:                                                  ; oword
        db 00H, 18H, 18H, 18H, 18H, 24H, 24H, 24H       ; 0000 _ .....$$$
        db 24H, 7EH, 42H, 42H, 42H, 0E7H, 00H, 00H      ; 0008 _ $~BBB...

keyval:                                                 ; byte
        db 30H, 78H                                     ; 0010 _ 0x

?_035:  db 30H                                          ; 0012 _ 0

?_036:  db 30H, 30H, 00H, 00H, 00H, 00H, 00H, 00H       ; 0013 _ 00......
        db 00H, 00H, 00H, 00H, 00H                      ; 001B _ .....

table_rgb.1786:                                         ; byte
        db 00H, 00H, 00H, 0FFH, 00H, 00H, 00H, 0FFH     ; 0020 _ ........
        db 00H, 0FFH, 0FFH, 00H, 00H, 00H, 0FFH, 0FFH   ; 0028 _ ........
        db 00H, 0FFH, 00H, 0FFH, 0FFH, 0FFH, 0FFH, 0FFH ; 0030 _ ........
        db 0C6H, 0C6H, 0C6H, 84H, 00H, 00H, 00H, 84H    ; 0038 _ ........
        db 00H, 84H, 84H, 00H, 00H, 00H, 84H, 84H       ; 0040 _ ........
        db 00H, 84H, 00H, 84H, 84H, 84H, 84H, 84H       ; 0048 _ ........
        db 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H       ; 0050 _ ........
        db 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H       ; 0058 _ ........

cursor.1844:                                            ; byte
        db 2AH, 2AH, 2AH, 2AH, 2AH, 2AH, 2AH, 2AH       ; 0060 _ ********
        db 2AH, 2AH, 2AH, 2AH, 2AH, 2AH, 2EH, 2EH       ; 0068 _ ******..
        db 2AH, 4FH, 4FH, 4FH, 4FH, 4FH, 4FH, 4FH       ; 0070 _ *OOOOOOO
        db 4FH, 4FH, 4FH, 4FH, 2AH, 2EH, 2EH, 2EH       ; 0078 _ OOOO*...
        db 2AH, 4FH, 4FH, 4FH, 4FH, 4FH, 4FH, 4FH       ; 0080 _ *OOOOOOO
        db 4FH, 4FH, 4FH, 2AH, 2EH, 2EH, 2EH, 2EH       ; 0088 _ OOO*....
        db 2AH, 4FH, 4FH, 4FH, 4FH, 4FH, 4FH, 4FH       ; 0090 _ *OOOOOOO
        db 4FH, 4FH, 2AH, 2EH, 2EH, 2EH, 2EH, 2EH       ; 0098 _ OO*.....
        db 2AH, 4FH, 4FH, 4FH, 4FH, 4FH, 4FH, 4FH       ; 00A0 _ *OOOOOOO
        db 4FH, 2AH, 2EH, 2EH, 2EH, 2EH, 2EH, 2EH       ; 00A8 _ O*......
        db 2AH, 4FH, 4FH, 4FH, 4FH, 4FH, 4FH, 4FH       ; 00B0 _ *OOOOOOO
        db 2AH, 2EH, 2EH, 2EH, 2EH, 2EH, 2EH, 2EH       ; 00B8 _ *.......
        db 2AH, 4FH, 4FH, 4FH, 4FH, 4FH, 4FH, 4FH       ; 00C0 _ *OOOOOOO
        db 2AH, 2EH, 2EH, 2EH, 2EH, 2EH, 2EH, 2EH       ; 00C8 _ *.......
        db 2AH, 4FH, 4FH, 4FH, 4FH, 4FH, 4FH, 4FH       ; 00D0 _ *OOOOOOO
        db 4FH, 2AH, 2EH, 2EH, 2EH, 2EH, 2EH, 2EH       ; 00D8 _ O*......
        db 2AH, 4FH, 4FH, 4FH, 4FH, 2AH, 2AH, 4FH       ; 00E0 _ *OOOO**O
        db 4FH, 4FH, 2AH, 2EH, 2EH, 2EH, 2EH, 2EH       ; 00E8 _ OO*.....
        db 2AH, 4FH, 4FH, 4FH, 2AH, 2EH, 2EH, 2AH       ; 00F0 _ *OOO*..*
        db 4FH, 4FH, 4FH, 2AH, 2EH, 2EH, 2EH, 2EH       ; 00F8 _ OOO*....
        db 2AH, 4FH, 4FH, 2AH, 2EH, 2EH, 2EH, 2EH       ; 0100 _ *OO*....
        db 2AH, 4FH, 4FH, 4FH, 2AH, 2EH, 2EH, 2EH       ; 0108 _ *OOO*...
        db 2AH, 4FH, 2AH, 2EH, 2EH, 2EH, 2EH, 2EH       ; 0110 _ *O*.....
        db 2EH, 2AH, 4FH, 4FH, 4FH, 2AH, 2EH, 2EH       ; 0118 _ .*OOO*..
        db 2AH, 2AH, 2EH, 2EH, 2EH, 2EH, 2EH, 2EH       ; 0120 _ **......
        db 2EH, 2EH, 2AH, 4FH, 4FH, 4FH, 2AH, 2EH       ; 0128 _ ..*OOO*.
        db 2AH, 2EH, 2EH, 2EH, 2EH, 2EH, 2EH, 2EH       ; 0130 _ *.......
        db 2EH, 2EH, 2EH, 2AH, 4FH, 4FH, 4FH, 2AH       ; 0138 _ ...*OOO*
        db 2EH, 2EH, 2EH, 2EH, 2EH, 2EH, 2EH, 2EH       ; 0140 _ ........
        db 2EH, 2EH, 2EH, 2EH, 2AH, 4FH, 4FH, 2AH       ; 0148 _ ....*OO*
        db 2EH, 2EH, 2EH, 2EH, 2EH, 2EH, 2EH, 2EH       ; 0150 _ ........
        db 2EH, 2EH, 2EH, 2EH, 2EH, 2AH, 2AH, 2AH       ; 0158 _ .....***


;SECTION .bss    align=32 noexecute                      ; section number 3, bss

mcursor:                                                ; byte
        resb    256                                     ; 0000

keybuf:                                                 ; byte
        resb    32                                      ; 0100

?_037:  resd    1                                       ; 0120

?_038:  resd    1                                       ; 0124

?_039:  resd    1                                       ; 0128

bootInfo:                                               ; qword
        resb    4                                       ; 012C

?_040:  resw    1                                       ; 0130

?_041:  resw    1                                       ; 0132

showPos.1777:                                           ; dword
        resd    1                                       ; 0134


;SECTION .rodata align=1 noexecute                       ; section number 4, const

?_042:                                                  ; byte
        db 77H, 65H, 6CH, 63H, 6FH, 6DH, 65H, 20H       ; 0000 _ welcome 
        db 74H, 6FH, 20H, 6CH, 69H, 61H, 6EH, 78H       ; 0008 _ to lianx
        db 00H                                          ; 0010 _ .


