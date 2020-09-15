; Disassembly of file: write_vga_desktop.o
; Tue Sep 15 09:20:12 2020
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
;extern io_cli                                           ; near
;extern io_load_eflags                                   ; near
;extern io_hlt                                           ; near


;SECTION .text   align=1 execute                         ; section number 1, code

CMain:  ; Function begin
        push    ebp                                     ; 0000 _ 55
        mov     ebp, esp                                ; 0001 _ 89. E5
        push    ebx                                     ; 0003 _ 53
        sub     esp, 52                                 ; 0004 _ 83. EC, 34
        mov     dword [esp], bootInfo                   ; 0007 _ C7. 04 24, 00000100(d)
        call    initBootInfo                            ; 000E _ E8, FFFFFFFC(rel)
        mov     eax, dword [bootInfo]                   ; 0013 _ A1, 00000100(d)
        mov     dword [ebp-0CH], eax                    ; 0018 _ 89. 45, F4
        movzx   eax, word [?_035]                       ; 001B _ 0F B7. 05, 00000104(d)
        cwde                                            ; 0022 _ 98
        mov     dword [ebp-10H], eax                    ; 0023 _ 89. 45, F0
        movzx   eax, word [?_036]                       ; 0026 _ 0F B7. 05, 00000106(d)
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
        mov     dword [esp+14H], ?_037                  ; 03B0 _ C7. 44 24, 14, 00000000(d)
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
?_001:  call    io_hlt                                  ; 0438 _ E8, FFFFFFFC(rel)
        jmp     ?_001                                   ; 043D _ EB, F9
; CMain End of function

initBootInfo:; Function begin
        push    ebp                                     ; 043F _ 55
        mov     ebp, esp                                ; 0440 _ 89. E5
        mov     eax, dword [ebp+8H]                     ; 0442 _ 8B. 45, 08
        mov     dword [eax], 655360                     ; 0445 _ C7. 00, 000A0000
        mov     eax, dword [ebp+8H]                     ; 044B _ 8B. 45, 08
; Note: Length-changing prefix causes delay on Intel processors
        mov     word [eax+4H], 320                      ; 044E _ 66: C7. 40, 04, 0140
        mov     eax, dword [ebp+8H]                     ; 0454 _ 8B. 45, 08
; Note: Length-changing prefix causes delay on Intel processors
        mov     word [eax+6H], 200                      ; 0457 _ 66: C7. 40, 06, 00C8
        pop     ebp                                     ; 045D _ 5D
        ret                                             ; 045E _ C3
; initBootInfo End of function

init_palette:; Function begin
        push    ebp                                     ; 045F _ 55
        mov     ebp, esp                                ; 0460 _ 89. E5
        sub     esp, 24                                 ; 0462 _ 83. EC, 18
        mov     dword [esp+8H], table_rgb.1773          ; 0465 _ C7. 44 24, 08, 00000020(d)
        mov     dword [esp+4H], 15                      ; 046D _ C7. 44 24, 04, 0000000F
        mov     dword [esp], 0                          ; 0475 _ C7. 04 24, 00000000
        call    set_palette                             ; 047C _ E8, FFFFFFFC(rel)
        nop                                             ; 0481 _ 90
        leave                                           ; 0482 _ C9
        ret                                             ; 0483 _ C3
; init_palette End of function

set_palette:; Function begin
        push    ebp                                     ; 0484 _ 55
        mov     ebp, esp                                ; 0485 _ 89. E5
        sub     esp, 40                                 ; 0487 _ 83. EC, 28
        call    io_load_eflags                          ; 048A _ E8, FFFFFFFC(rel)
        mov     dword [ebp-10H], eax                    ; 048F _ 89. 45, F0
        call    io_cli                                  ; 0492 _ E8, FFFFFFFC(rel)
        mov     eax, dword [ebp+8H]                     ; 0497 _ 8B. 45, 08
        mov     dword [esp+4H], eax                     ; 049A _ 89. 44 24, 04
        mov     dword [esp], 968                        ; 049E _ C7. 04 24, 000003C8
        call    io_out8                                 ; 04A5 _ E8, FFFFFFFC(rel)
        mov     eax, dword [ebp+8H]                     ; 04AA _ 8B. 45, 08
        mov     dword [ebp-0CH], eax                    ; 04AD _ 89. 45, F4
        jmp     ?_003                                   ; 04B0 _ EB, 62

?_002:  mov     eax, dword [ebp+10H]                    ; 04B2 _ 8B. 45, 10
        movzx   eax, byte [eax]                         ; 04B5 _ 0F B6. 00
        shr     al, 2                                   ; 04B8 _ C0. E8, 02
        movzx   eax, al                                 ; 04BB _ 0F B6. C0
        mov     dword [esp+4H], eax                     ; 04BE _ 89. 44 24, 04
        mov     dword [esp], 969                        ; 04C2 _ C7. 04 24, 000003C9
        call    io_out8                                 ; 04C9 _ E8, FFFFFFFC(rel)
        mov     eax, dword [ebp+10H]                    ; 04CE _ 8B. 45, 10
        add     eax, 1                                  ; 04D1 _ 83. C0, 01
        movzx   eax, byte [eax]                         ; 04D4 _ 0F B6. 00
        shr     al, 2                                   ; 04D7 _ C0. E8, 02
        movzx   eax, al                                 ; 04DA _ 0F B6. C0
        mov     dword [esp+4H], eax                     ; 04DD _ 89. 44 24, 04
        mov     dword [esp], 969                        ; 04E1 _ C7. 04 24, 000003C9
        call    io_out8                                 ; 04E8 _ E8, FFFFFFFC(rel)
        mov     eax, dword [ebp+10H]                    ; 04ED _ 8B. 45, 10
        add     eax, 2                                  ; 04F0 _ 83. C0, 02
        movzx   eax, byte [eax]                         ; 04F3 _ 0F B6. 00
        shr     al, 2                                   ; 04F6 _ C0. E8, 02
        movzx   eax, al                                 ; 04F9 _ 0F B6. C0
        mov     dword [esp+4H], eax                     ; 04FC _ 89. 44 24, 04
        mov     dword [esp], 969                        ; 0500 _ C7. 04 24, 000003C9
        call    io_out8                                 ; 0507 _ E8, FFFFFFFC(rel)
        add     dword [ebp+10H], 3                      ; 050C _ 83. 45, 10, 03
        add     dword [ebp-0CH], 1                      ; 0510 _ 83. 45, F4, 01
?_003:  mov     eax, dword [ebp-0CH]                    ; 0514 _ 8B. 45, F4
        cmp     eax, dword [ebp+0CH]                    ; 0517 _ 3B. 45, 0C
        jle     ?_002                                   ; 051A _ 7E, 96
        mov     eax, dword [ebp-10H]                    ; 051C _ 8B. 45, F0
        mov     dword [esp], eax                        ; 051F _ 89. 04 24
        call    io_store_eflags                         ; 0522 _ E8, FFFFFFFC(rel)
        nop                                             ; 0527 _ 90
        leave                                           ; 0528 _ C9
        ret                                             ; 0529 _ C3
; set_palette End of function

boxfill8:; Function begin
        push    ebp                                     ; 052A _ 55
        mov     ebp, esp                                ; 052B _ 89. E5
        sub     esp, 20                                 ; 052D _ 83. EC, 14
        mov     eax, dword [ebp+10H]                    ; 0530 _ 8B. 45, 10
        mov     byte [ebp-14H], al                      ; 0533 _ 88. 45, EC
        mov     eax, dword [ebp+18H]                    ; 0536 _ 8B. 45, 18
        mov     dword [ebp-8H], eax                     ; 0539 _ 89. 45, F8
        jmp     ?_007                                   ; 053C _ EB, 33

?_004:  mov     eax, dword [ebp+14H]                    ; 053E _ 8B. 45, 14
        mov     dword [ebp-4H], eax                     ; 0541 _ 89. 45, FC
        jmp     ?_006                                   ; 0544 _ EB, 1F

?_005:  mov     eax, dword [ebp-8H]                     ; 0546 _ 8B. 45, F8
        imul    eax, dword [ebp+0CH]                    ; 0549 _ 0F AF. 45, 0C
        mov     edx, eax                                ; 054D _ 89. C2
        mov     eax, dword [ebp-4H]                     ; 054F _ 8B. 45, FC
        add     eax, edx                                ; 0552 _ 01. D0
        mov     edx, eax                                ; 0554 _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 0556 _ 8B. 45, 08
        add     edx, eax                                ; 0559 _ 01. C2
        movzx   eax, byte [ebp-14H]                     ; 055B _ 0F B6. 45, EC
        mov     byte [edx], al                          ; 055F _ 88. 02
        add     dword [ebp-4H], 1                       ; 0561 _ 83. 45, FC, 01
?_006:  mov     eax, dword [ebp-4H]                     ; 0565 _ 8B. 45, FC
        cmp     eax, dword [ebp+1CH]                    ; 0568 _ 3B. 45, 1C
        jle     ?_005                                   ; 056B _ 7E, D9
        add     dword [ebp-8H], 1                       ; 056D _ 83. 45, F8, 01
?_007:  mov     eax, dword [ebp-8H]                     ; 0571 _ 8B. 45, F8
        cmp     eax, dword [ebp+20H]                    ; 0574 _ 3B. 45, 20
        jle     ?_004                                   ; 0577 _ 7E, C5
        leave                                           ; 0579 _ C9
        ret                                             ; 057A _ C3
; boxfill8 End of function

showFont8:; Function begin
        push    ebp                                     ; 057B _ 55
        mov     ebp, esp                                ; 057C _ 89. E5
        sub     esp, 20                                 ; 057E _ 83. EC, 14
        mov     eax, dword [ebp+18H]                    ; 0581 _ 8B. 45, 18
        mov     byte [ebp-14H], al                      ; 0584 _ 88. 45, EC
        mov     dword [ebp-4H], 0                       ; 0587 _ C7. 45, FC, 00000000
        jmp     ?_017                                   ; 058E _ E9, 0000016C

?_008:  mov     edx, dword [ebp-4H]                     ; 0593 _ 8B. 55, FC
        mov     eax, dword [ebp+1CH]                    ; 0596 _ 8B. 45, 1C
        add     eax, edx                                ; 0599 _ 01. D0
        movzx   eax, byte [eax]                         ; 059B _ 0F B6. 00
        mov     byte [ebp-5H], al                       ; 059E _ 88. 45, FB
        cmp     byte [ebp-5H], 0                        ; 05A1 _ 80. 7D, FB, 00
        jns     ?_009                                   ; 05A5 _ 79, 20
        mov     eax, dword [ebp-4H]                     ; 05A7 _ 8B. 45, FC
        mov     edx, dword [ebp+14H]                    ; 05AA _ 8B. 55, 14
        add     eax, edx                                ; 05AD _ 01. D0
        imul    eax, dword [ebp+0CH]                    ; 05AF _ 0F AF. 45, 0C
        mov     edx, eax                                ; 05B3 _ 89. C2
        mov     eax, dword [ebp+10H]                    ; 05B5 _ 8B. 45, 10
        add     eax, edx                                ; 05B8 _ 01. D0
        mov     edx, eax                                ; 05BA _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 05BC _ 8B. 45, 08
        add     edx, eax                                ; 05BF _ 01. C2
        movzx   eax, byte [ebp-14H]                     ; 05C1 _ 0F B6. 45, EC
        mov     byte [edx], al                          ; 05C5 _ 88. 02
?_009:  movsx   eax, byte [ebp-5H]                      ; 05C7 _ 0F BE. 45, FB
        and     eax, 40H                                ; 05CB _ 83. E0, 40
        test    eax, eax                                ; 05CE _ 85. C0
        jz      ?_010                                   ; 05D0 _ 74, 21
        mov     eax, dword [ebp-4H]                     ; 05D2 _ 8B. 45, FC
        mov     edx, dword [ebp+14H]                    ; 05D5 _ 8B. 55, 14
        add     eax, edx                                ; 05D8 _ 01. D0
        imul    eax, dword [ebp+0CH]                    ; 05DA _ 0F AF. 45, 0C
        mov     edx, eax                                ; 05DE _ 89. C2
        mov     eax, dword [ebp+10H]                    ; 05E0 _ 8B. 45, 10
        add     eax, edx                                ; 05E3 _ 01. D0
        lea     edx, [eax+1H]                           ; 05E5 _ 8D. 50, 01
        mov     eax, dword [ebp+8H]                     ; 05E8 _ 8B. 45, 08
        add     edx, eax                                ; 05EB _ 01. C2
        movzx   eax, byte [ebp-14H]                     ; 05ED _ 0F B6. 45, EC
        mov     byte [edx], al                          ; 05F1 _ 88. 02
?_010:  movsx   eax, byte [ebp-5H]                      ; 05F3 _ 0F BE. 45, FB
        and     eax, 20H                                ; 05F7 _ 83. E0, 20
        test    eax, eax                                ; 05FA _ 85. C0
        jz      ?_011                                   ; 05FC _ 74, 21
        mov     eax, dword [ebp-4H]                     ; 05FE _ 8B. 45, FC
        mov     edx, dword [ebp+14H]                    ; 0601 _ 8B. 55, 14
        add     eax, edx                                ; 0604 _ 01. D0
        imul    eax, dword [ebp+0CH]                    ; 0606 _ 0F AF. 45, 0C
        mov     edx, eax                                ; 060A _ 89. C2
        mov     eax, dword [ebp+10H]                    ; 060C _ 8B. 45, 10
        add     eax, edx                                ; 060F _ 01. D0
        lea     edx, [eax+2H]                           ; 0611 _ 8D. 50, 02
        mov     eax, dword [ebp+8H]                     ; 0614 _ 8B. 45, 08
        add     edx, eax                                ; 0617 _ 01. C2
        movzx   eax, byte [ebp-14H]                     ; 0619 _ 0F B6. 45, EC
        mov     byte [edx], al                          ; 061D _ 88. 02
?_011:  movsx   eax, byte [ebp-5H]                      ; 061F _ 0F BE. 45, FB
        and     eax, 10H                                ; 0623 _ 83. E0, 10
        test    eax, eax                                ; 0626 _ 85. C0
        jz      ?_012                                   ; 0628 _ 74, 21
        mov     eax, dword [ebp-4H]                     ; 062A _ 8B. 45, FC
        mov     edx, dword [ebp+14H]                    ; 062D _ 8B. 55, 14
        add     eax, edx                                ; 0630 _ 01. D0
        imul    eax, dword [ebp+0CH]                    ; 0632 _ 0F AF. 45, 0C
        mov     edx, eax                                ; 0636 _ 89. C2
        mov     eax, dword [ebp+10H]                    ; 0638 _ 8B. 45, 10
        add     eax, edx                                ; 063B _ 01. D0
        lea     edx, [eax+3H]                           ; 063D _ 8D. 50, 03
        mov     eax, dword [ebp+8H]                     ; 0640 _ 8B. 45, 08
        add     edx, eax                                ; 0643 _ 01. C2
        movzx   eax, byte [ebp-14H]                     ; 0645 _ 0F B6. 45, EC
        mov     byte [edx], al                          ; 0649 _ 88. 02
?_012:  movsx   eax, byte [ebp-5H]                      ; 064B _ 0F BE. 45, FB
        and     eax, 08H                                ; 064F _ 83. E0, 08
        test    eax, eax                                ; 0652 _ 85. C0
        jz      ?_013                                   ; 0654 _ 74, 21
        mov     eax, dword [ebp-4H]                     ; 0656 _ 8B. 45, FC
        mov     edx, dword [ebp+14H]                    ; 0659 _ 8B. 55, 14
        add     eax, edx                                ; 065C _ 01. D0
        imul    eax, dword [ebp+0CH]                    ; 065E _ 0F AF. 45, 0C
        mov     edx, eax                                ; 0662 _ 89. C2
        mov     eax, dword [ebp+10H]                    ; 0664 _ 8B. 45, 10
        add     eax, edx                                ; 0667 _ 01. D0
        lea     edx, [eax+4H]                           ; 0669 _ 8D. 50, 04
        mov     eax, dword [ebp+8H]                     ; 066C _ 8B. 45, 08
        add     edx, eax                                ; 066F _ 01. C2
        movzx   eax, byte [ebp-14H]                     ; 0671 _ 0F B6. 45, EC
        mov     byte [edx], al                          ; 0675 _ 88. 02
?_013:  movsx   eax, byte [ebp-5H]                      ; 0677 _ 0F BE. 45, FB
        and     eax, 04H                                ; 067B _ 83. E0, 04
        test    eax, eax                                ; 067E _ 85. C0
        jz      ?_014                                   ; 0680 _ 74, 21
        mov     eax, dword [ebp-4H]                     ; 0682 _ 8B. 45, FC
        mov     edx, dword [ebp+14H]                    ; 0685 _ 8B. 55, 14
        add     eax, edx                                ; 0688 _ 01. D0
        imul    eax, dword [ebp+0CH]                    ; 068A _ 0F AF. 45, 0C
        mov     edx, eax                                ; 068E _ 89. C2
        mov     eax, dword [ebp+10H]                    ; 0690 _ 8B. 45, 10
        add     eax, edx                                ; 0693 _ 01. D0
        lea     edx, [eax+5H]                           ; 0695 _ 8D. 50, 05
        mov     eax, dword [ebp+8H]                     ; 0698 _ 8B. 45, 08
        add     edx, eax                                ; 069B _ 01. C2
        movzx   eax, byte [ebp-14H]                     ; 069D _ 0F B6. 45, EC
        mov     byte [edx], al                          ; 06A1 _ 88. 02
?_014:  movsx   eax, byte [ebp-5H]                      ; 06A3 _ 0F BE. 45, FB
        and     eax, 02H                                ; 06A7 _ 83. E0, 02
        test    eax, eax                                ; 06AA _ 85. C0
        jz      ?_015                                   ; 06AC _ 74, 21
        mov     eax, dword [ebp-4H]                     ; 06AE _ 8B. 45, FC
        mov     edx, dword [ebp+14H]                    ; 06B1 _ 8B. 55, 14
        add     eax, edx                                ; 06B4 _ 01. D0
        imul    eax, dword [ebp+0CH]                    ; 06B6 _ 0F AF. 45, 0C
        mov     edx, eax                                ; 06BA _ 89. C2
        mov     eax, dword [ebp+10H]                    ; 06BC _ 8B. 45, 10
        add     eax, edx                                ; 06BF _ 01. D0
        lea     edx, [eax+6H]                           ; 06C1 _ 8D. 50, 06
        mov     eax, dword [ebp+8H]                     ; 06C4 _ 8B. 45, 08
        add     edx, eax                                ; 06C7 _ 01. C2
        movzx   eax, byte [ebp-14H]                     ; 06C9 _ 0F B6. 45, EC
        mov     byte [edx], al                          ; 06CD _ 88. 02
?_015:  movsx   eax, byte [ebp-5H]                      ; 06CF _ 0F BE. 45, FB
        and     eax, 01H                                ; 06D3 _ 83. E0, 01
        test    eax, eax                                ; 06D6 _ 85. C0
        jz      ?_016                                   ; 06D8 _ 74, 21
        mov     eax, dword [ebp-4H]                     ; 06DA _ 8B. 45, FC
        mov     edx, dword [ebp+14H]                    ; 06DD _ 8B. 55, 14
        add     eax, edx                                ; 06E0 _ 01. D0
        imul    eax, dword [ebp+0CH]                    ; 06E2 _ 0F AF. 45, 0C
        mov     edx, eax                                ; 06E6 _ 89. C2
        mov     eax, dword [ebp+10H]                    ; 06E8 _ 8B. 45, 10
        add     eax, edx                                ; 06EB _ 01. D0
        lea     edx, [eax+7H]                           ; 06ED _ 8D. 50, 07
        mov     eax, dword [ebp+8H]                     ; 06F0 _ 8B. 45, 08
        add     edx, eax                                ; 06F3 _ 01. C2
        movzx   eax, byte [ebp-14H]                     ; 06F5 _ 0F B6. 45, EC
        mov     byte [edx], al                          ; 06F9 _ 88. 02
?_016:  add     dword [ebp-4H], 1                       ; 06FB _ 83. 45, FC, 01
?_017:  cmp     dword [ebp-4H], 15                      ; 06FF _ 83. 7D, FC, 0F
        jle     ?_008                                   ; 0703 _ 0F 8E, FFFFFE8A
        leave                                           ; 0709 _ C9
        ret                                             ; 070A _ C3
; showFont8 End of function

showString:; Function begin
        push    ebp                                     ; 070B _ 55
        mov     ebp, esp                                ; 070C _ 89. E5
        sub     esp, 28                                 ; 070E _ 83. EC, 1C
        mov     eax, dword [ebp+18H]                    ; 0711 _ 8B. 45, 18
        mov     byte [ebp-4H], al                       ; 0714 _ 88. 45, FC
        jmp     ?_019                                   ; 0717 _ EB, 49

?_018:  mov     eax, dword [ebp+1CH]                    ; 0719 _ 8B. 45, 1C
        movzx   eax, byte [eax]                         ; 071C _ 0F B6. 00
        movzx   eax, al                                 ; 071F _ 0F B6. C0
        sub     eax, 32                                 ; 0722 _ 83. E8, 20
        shl     eax, 4                                  ; 0725 _ C1. E0, 04
        lea     edx, [systemFont+eax]                   ; 0728 _ 8D. 90, 00000000(d)
        movsx   eax, byte [ebp-4H]                      ; 072E _ 0F BE. 45, FC
        mov     dword [esp+14H], edx                    ; 0732 _ 89. 54 24, 14
        mov     dword [esp+10H], eax                    ; 0736 _ 89. 44 24, 10
        mov     eax, dword [ebp+14H]                    ; 073A _ 8B. 45, 14
        mov     dword [esp+0CH], eax                    ; 073D _ 89. 44 24, 0C
        mov     eax, dword [ebp+10H]                    ; 0741 _ 8B. 45, 10
        mov     dword [esp+8H], eax                     ; 0744 _ 89. 44 24, 08
        mov     eax, dword [ebp+0CH]                    ; 0748 _ 8B. 45, 0C
        mov     dword [esp+4H], eax                     ; 074B _ 89. 44 24, 04
        mov     eax, dword [ebp+8H]                     ; 074F _ 8B. 45, 08
        mov     dword [esp], eax                        ; 0752 _ 89. 04 24
        call    showFont8                               ; 0755 _ E8, FFFFFFFC(rel)
        add     dword [ebp+10H], 8                      ; 075A _ 83. 45, 10, 08
        add     dword [ebp+1CH], 1                      ; 075E _ 83. 45, 1C, 01
?_019:  mov     eax, dword [ebp+1CH]                    ; 0762 _ 8B. 45, 1C
        movzx   eax, byte [eax]                         ; 0765 _ 0F B6. 00
        test    al, al                                  ; 0768 _ 84. C0
        jnz     ?_018                                   ; 076A _ 75, AD
        leave                                           ; 076C _ C9
        ret                                             ; 076D _ C3
; showString End of function

init_mouse_cursor:; Function begin
        push    ebp                                     ; 076E _ 55
        mov     ebp, esp                                ; 076F _ 89. E5
        sub     esp, 20                                 ; 0771 _ 83. EC, 14
        mov     eax, dword [ebp+0CH]                    ; 0774 _ 8B. 45, 0C
        mov     byte [ebp-14H], al                      ; 0777 _ 88. 45, EC
        mov     dword [ebp-8H], 0                       ; 077A _ C7. 45, F8, 00000000
        jmp     ?_026                                   ; 0781 _ E9, 000000B1

?_020:  mov     dword [ebp-4H], 0                       ; 0786 _ C7. 45, FC, 00000000
        jmp     ?_025                                   ; 078D _ E9, 00000097

?_021:  mov     eax, dword [ebp-8H]                     ; 0792 _ 8B. 45, F8
        shl     eax, 4                                  ; 0795 _ C1. E0, 04
        mov     edx, eax                                ; 0798 _ 89. C2
        mov     eax, dword [ebp-4H]                     ; 079A _ 8B. 45, FC
        add     eax, edx                                ; 079D _ 01. D0
        add     eax, cursor.1831                        ; 079F _ 05, 00000060(d)
        movzx   eax, byte [eax]                         ; 07A4 _ 0F B6. 00
        cmp     al, 42                                  ; 07A7 _ 3C, 2A
        jnz     ?_022                                   ; 07A9 _ 75, 17
        mov     eax, dword [ebp-8H]                     ; 07AB _ 8B. 45, F8
        shl     eax, 4                                  ; 07AE _ C1. E0, 04
        mov     edx, eax                                ; 07B1 _ 89. C2
        mov     eax, dword [ebp-4H]                     ; 07B3 _ 8B. 45, FC
        add     eax, edx                                ; 07B6 _ 01. D0
        mov     edx, eax                                ; 07B8 _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 07BA _ 8B. 45, 08
        add     eax, edx                                ; 07BD _ 01. D0
        mov     byte [eax], 0                           ; 07BF _ C6. 00, 00
?_022:  mov     eax, dword [ebp-8H]                     ; 07C2 _ 8B. 45, F8
        shl     eax, 4                                  ; 07C5 _ C1. E0, 04
        mov     edx, eax                                ; 07C8 _ 89. C2
        mov     eax, dword [ebp-4H]                     ; 07CA _ 8B. 45, FC
        add     eax, edx                                ; 07CD _ 01. D0
        add     eax, cursor.1831                        ; 07CF _ 05, 00000060(d)
        movzx   eax, byte [eax]                         ; 07D4 _ 0F B6. 00
        cmp     al, 79                                  ; 07D7 _ 3C, 4F
        jnz     ?_023                                   ; 07D9 _ 75, 17
        mov     eax, dword [ebp-8H]                     ; 07DB _ 8B. 45, F8
        shl     eax, 4                                  ; 07DE _ C1. E0, 04
        mov     edx, eax                                ; 07E1 _ 89. C2
        mov     eax, dword [ebp-4H]                     ; 07E3 _ 8B. 45, FC
        add     eax, edx                                ; 07E6 _ 01. D0
        mov     edx, eax                                ; 07E8 _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 07EA _ 8B. 45, 08
        add     eax, edx                                ; 07ED _ 01. D0
        mov     byte [eax], 7                           ; 07EF _ C6. 00, 07
?_023:  mov     eax, dword [ebp-8H]                     ; 07F2 _ 8B. 45, F8
        shl     eax, 4                                  ; 07F5 _ C1. E0, 04
        mov     edx, eax                                ; 07F8 _ 89. C2
        mov     eax, dword [ebp-4H]                     ; 07FA _ 8B. 45, FC
        add     eax, edx                                ; 07FD _ 01. D0
        add     eax, cursor.1831                        ; 07FF _ 05, 00000060(d)
        movzx   eax, byte [eax]                         ; 0804 _ 0F B6. 00
        cmp     al, 46                                  ; 0807 _ 3C, 2E
        jnz     ?_024                                   ; 0809 _ 75, 1A
        mov     eax, dword [ebp-8H]                     ; 080B _ 8B. 45, F8
        shl     eax, 4                                  ; 080E _ C1. E0, 04
        mov     edx, eax                                ; 0811 _ 89. C2
        mov     eax, dword [ebp-4H]                     ; 0813 _ 8B. 45, FC
        add     eax, edx                                ; 0816 _ 01. D0
        mov     edx, eax                                ; 0818 _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 081A _ 8B. 45, 08
        add     edx, eax                                ; 081D _ 01. C2
        movzx   eax, byte [ebp-14H]                     ; 081F _ 0F B6. 45, EC
        mov     byte [edx], al                          ; 0823 _ 88. 02
?_024:  add     dword [ebp-4H], 1                       ; 0825 _ 83. 45, FC, 01
?_025:  cmp     dword [ebp-4H], 15                      ; 0829 _ 83. 7D, FC, 0F
        jle     ?_021                                   ; 082D _ 0F 8E, FFFFFF5F
        add     dword [ebp-8H], 1                       ; 0833 _ 83. 45, F8, 01
?_026:  cmp     dword [ebp-8H], 15                      ; 0837 _ 83. 7D, F8, 0F
        jle     ?_020                                   ; 083B _ 0F 8E, FFFFFF45
        leave                                           ; 0841 _ C9
        ret                                             ; 0842 _ C3
; init_mouse_cursor End of function

putblock:; Function begin
        push    ebp                                     ; 0843 _ 55
        mov     ebp, esp                                ; 0844 _ 89. E5
        sub     esp, 16                                 ; 0846 _ 83. EC, 10
        mov     dword [ebp-8H], 0                       ; 0849 _ C7. 45, F8, 00000000
        jmp     ?_030                                   ; 0850 _ EB, 50

?_027:  mov     dword [ebp-4H], 0                       ; 0852 _ C7. 45, FC, 00000000
        jmp     ?_029                                   ; 0859 _ EB, 3B

?_028:  mov     eax, dword [ebp-8H]                     ; 085B _ 8B. 45, F8
        mov     edx, dword [ebp+1CH]                    ; 085E _ 8B. 55, 1C
        add     eax, edx                                ; 0861 _ 01. D0
        imul    eax, dword [ebp+0CH]                    ; 0863 _ 0F AF. 45, 0C
        mov     edx, dword [ebp-4H]                     ; 0867 _ 8B. 55, FC
        mov     ecx, dword [ebp+18H]                    ; 086A _ 8B. 4D, 18
        add     edx, ecx                                ; 086D _ 01. CA
        add     eax, edx                                ; 086F _ 01. D0
        mov     edx, eax                                ; 0871 _ 89. C2
        mov     eax, dword [ebp+8H]                     ; 0873 _ 8B. 45, 08
        add     edx, eax                                ; 0876 _ 01. C2
        mov     eax, dword [ebp-8H]                     ; 0878 _ 8B. 45, F8
        imul    eax, dword [ebp+24H]                    ; 087B _ 0F AF. 45, 24
        mov     ecx, eax                                ; 087F _ 89. C1
        mov     eax, dword [ebp-4H]                     ; 0881 _ 8B. 45, FC
        add     eax, ecx                                ; 0884 _ 01. C8
        mov     ecx, eax                                ; 0886 _ 89. C1
        mov     eax, dword [ebp+20H]                    ; 0888 _ 8B. 45, 20
        add     eax, ecx                                ; 088B _ 01. C8
        movzx   eax, byte [eax]                         ; 088D _ 0F B6. 00
        mov     byte [edx], al                          ; 0890 _ 88. 02
        add     dword [ebp-4H], 1                       ; 0892 _ 83. 45, FC, 01
?_029:  mov     eax, dword [ebp-4H]                     ; 0896 _ 8B. 45, FC
        cmp     eax, dword [ebp+10H]                    ; 0899 _ 3B. 45, 10
        jl      ?_028                                   ; 089C _ 7C, BD
        add     dword [ebp-8H], 1                       ; 089E _ 83. 45, F8, 01
?_030:  mov     eax, dword [ebp-8H]                     ; 08A2 _ 8B. 45, F8
        cmp     eax, dword [ebp+14H]                    ; 08A5 _ 3B. 45, 14
        jl      ?_027                                   ; 08A8 _ 7C, A8
        leave                                           ; 08AA _ C9
        ret                                             ; 08AB _ C3
; putblock End of function

intHandlerFromC:; Function begin
        push    ebp                                     ; 08AC _ 55
        mov     ebp, esp                                ; 08AD _ 89. E5
        sub     esp, 72                                 ; 08AF _ 83. EC, 48
        mov     eax, dword [bootInfo]                   ; 08B2 _ A1, 00000100(d)
        mov     dword [ebp-0CH], eax                    ; 08B7 _ 89. 45, F4
        movzx   eax, word [?_035]                       ; 08BA _ 0F B7. 05, 00000104(d)
        cwde                                            ; 08C1 _ 98
        mov     dword [ebp-10H], eax                    ; 08C2 _ 89. 45, F0
        movzx   eax, word [?_036]                       ; 08C5 _ 0F B7. 05, 00000106(d)
        cwde                                            ; 08CC _ 98
        mov     dword [ebp-14H], eax                    ; 08CD _ 89. 45, EC
        mov     dword [esp+4H], 33                      ; 08D0 _ C7. 44 24, 04, 00000021
        mov     dword [esp], 32                         ; 08D8 _ C7. 04 24, 00000020
        call    io_out8                                 ; 08DF _ E8, FFFFFFFC(rel)
        mov     byte [ebp-15H], 0                       ; 08E4 _ C6. 45, EB, 00
        mov     dword [esp], 96                         ; 08E8 _ C7. 04 24, 00000060
        call    io_in8                                  ; 08EF _ E8, FFFFFFFC(rel)
        mov     byte [ebp-15H], al                      ; 08F4 _ 88. 45, EB
        movzx   eax, byte [ebp-15H]                     ; 08F7 _ 0F B6. 45, EB
        mov     dword [esp], eax                        ; 08FB _ 89. 04 24
        call    charToHexStr                            ; 08FE _ E8, FFFFFFFC(rel)
        mov     dword [ebp-1CH], eax                    ; 0903 _ 89. 45, E4
        mov     eax, dword [showPos.1867]               ; 0906 _ A1, 00000108(d)
        mov     edx, dword [ebp-1CH]                    ; 090B _ 8B. 55, E4
        mov     dword [esp+14H], edx                    ; 090E _ 89. 54 24, 14
        mov     dword [esp+10H], 7                      ; 0912 _ C7. 44 24, 10, 00000007
        mov     dword [esp+0CH], 0                      ; 091A _ C7. 44 24, 0C, 00000000
        mov     dword [esp+8H], eax                     ; 0922 _ 89. 44 24, 08
        mov     eax, dword [ebp-10H]                    ; 0926 _ 8B. 45, F0
        mov     dword [esp+4H], eax                     ; 0929 _ 89. 44 24, 04
        mov     eax, dword [ebp-0CH]                    ; 092D _ 8B. 45, F4
        mov     dword [esp], eax                        ; 0930 _ 89. 04 24
        call    showString                              ; 0933 _ E8, FFFFFFFC(rel)
        mov     eax, dword [showPos.1867]               ; 0938 _ A1, 00000108(d)
        add     eax, 32                                 ; 093D _ 83. C0, 20
        mov     dword [showPos.1867], eax               ; 0940 _ A3, 00000108(d)
        leave                                           ; 0945 _ C9
        ret                                             ; 0946 _ C3
; intHandlerFromC End of function

charToHexVal:; Function begin
        push    ebp                                     ; 0947 _ 55
        mov     ebp, esp                                ; 0948 _ 89. E5
        sub     esp, 4                                  ; 094A _ 83. EC, 04
        mov     eax, dword [ebp+8H]                     ; 094D _ 8B. 45, 08
        mov     byte [ebp-4H], al                       ; 0950 _ 88. 45, FC
        cmp     byte [ebp-4H], 9                        ; 0953 _ 80. 7D, FC, 09
        jle     ?_031                                   ; 0957 _ 7E, 09
        movzx   eax, byte [ebp-4H]                      ; 0959 _ 0F B6. 45, FC
        add     eax, 55                                 ; 095D _ 83. C0, 37
        jmp     ?_032                                   ; 0960 _ EB, 07

?_031:  movzx   eax, byte [ebp-4H]                      ; 0962 _ 0F B6. 45, FC
        add     eax, 48                                 ; 0966 _ 83. C0, 30
?_032:  leave                                           ; 0969 _ C9
        ret                                             ; 096A _ C3
; charToHexVal End of function

charToHexStr:; Function begin
        push    ebp                                     ; 096B _ 55
        mov     ebp, esp                                ; 096C _ 89. E5
        sub     esp, 24                                 ; 096E _ 83. EC, 18
        mov     eax, dword [ebp+8H]                     ; 0971 _ 8B. 45, 08
        mov     byte [ebp-14H], al                      ; 0974 _ 88. 45, EC
        mov     dword [ebp-4H], 0                       ; 0977 _ C7. 45, FC, 00000000
        movzx   eax, byte [ebp-14H]                     ; 097E _ 0F B6. 45, EC
        and     eax, 0FH                                ; 0982 _ 83. E0, 0F
        mov     byte [ebp-5H], al                       ; 0985 _ 88. 45, FB
        movsx   eax, byte [ebp-5H]                      ; 0988 _ 0F BE. 45, FB
        mov     dword [esp], eax                        ; 098C _ 89. 04 24
        call    charToHexVal                            ; 098F _ E8, FFFFFFFC(rel)
        mov     byte [?_034], al                        ; 0994 _ A2, 00000013(d)
        movzx   eax, byte [ebp-14H]                     ; 0999 _ 0F B6. 45, EC
        shr     al, 4                                   ; 099D _ C0. E8, 04
        mov     byte [ebp-14H], al                      ; 09A0 _ 88. 45, EC
        movzx   eax, byte [ebp-14H]                     ; 09A3 _ 0F B6. 45, EC
        movsx   eax, al                                 ; 09A7 _ 0F BE. C0
        mov     dword [esp], eax                        ; 09AA _ 89. 04 24
        call    charToHexVal                            ; 09AD _ E8, FFFFFFFC(rel)
        mov     byte [?_033], al                        ; 09B2 _ A2, 00000012(d)
        mov     eax, keyval                             ; 09B7 _ B8, 00000010(d)
        leave                                           ; 09BC _ C9
        ret                                             ; 09BD _ C3
; charToHexStr End of function


;SECTION .data   align=32 noexecute                      ; section number 2, data

fontA:                                                  ; oword
        db 00H, 18H, 18H, 18H, 18H, 24H, 24H, 24H       ; 0000 _ .....$$$
        db 24H, 7EH, 42H, 42H, 42H, 0E7H, 00H, 00H      ; 0008 _ $~BBB...

keyval:                                                 ; byte
        db 30H, 78H                                     ; 0010 _ 0x

?_033:  db 30H                                          ; 0012 _ 0

?_034:  db 30H, 30H, 00H, 00H, 00H, 00H, 00H, 00H       ; 0013 _ 00......
        db 00H, 00H, 00H, 00H, 00H                      ; 001B _ .....

table_rgb.1773:                                         ; byte
        db 00H, 00H, 00H, 0FFH, 00H, 00H, 00H, 0FFH     ; 0020 _ ........
        db 00H, 0FFH, 0FFH, 00H, 00H, 00H, 0FFH, 0FFH   ; 0028 _ ........
        db 00H, 0FFH, 00H, 0FFH, 0FFH, 0FFH, 0FFH, 0FFH ; 0030 _ ........
        db 0C6H, 0C6H, 0C6H, 84H, 00H, 00H, 00H, 84H    ; 0038 _ ........
        db 00H, 84H, 84H, 00H, 00H, 00H, 84H, 84H       ; 0040 _ ........
        db 00H, 84H, 00H, 84H, 84H, 84H, 84H, 84H       ; 0048 _ ........
        db 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H       ; 0050 _ ........
        db 00H, 00H, 00H, 00H, 00H, 00H, 00H, 00H       ; 0058 _ ........

cursor.1831:                                            ; byte
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

bootInfo:                                               ; qword
        resb    4                                       ; 0100

?_035:  resw    1                                       ; 0104

?_036:  resw    1                                       ; 0106

showPos.1867:                                           ; dword
        resd    1                                       ; 0108


;SECTION .rodata align=1 noexecute                       ; section number 4, const

?_037:                                                  ; byte
        db 77H, 65H, 6CH, 63H, 6FH, 6DH, 65H, 20H       ; 0000 _ welcome 
        db 74H, 6FH, 20H, 6CH, 69H, 61H, 6EH, 78H       ; 0008 _ to lianx
        db 00H                                          ; 0010 _ .


