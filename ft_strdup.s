
section .text
    global _ft_strdup
    extern _ft_strlen
    extern _ft_strcpy
    extern _malloc

_ft_strdup:
            call _ft_strlen
            add RAX, 1
            push RDI
            mov RDI, RAX
            call _malloc
            pop R9
            mov RDI, RAX
            mov RSI, R9
            call _ft_strcpy
            ret