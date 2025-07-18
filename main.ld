MEMORY {
    ROM : ORIGIN = 0xA0000000 , LENGTH = 10k
    RAM : ORIGIN = 0xC0000000 , LENGTH =20k
}
_this.is.a.symbol =300;
"this is a symbol" =100;
"SECTION" =1000;

rule_1 = 0xc0fffefe;
a = 0x10;

SECTIONS {

rule_2 = 0xaaaafefe;
    b = 20;
    .text : {
        *(AXAY)
        /* _dst_start_text_ = .;   start address */
        *(.text)
        c = a + b;
        d = a - b;
        e = a / b;
        . = . + 0x10;
        /* _dst_end_text_ = .;     end address */

/* main.o(.tect) */
/* global.o(.text) */

    } > ROM AT > ROM


    .rodata : {
         /* _dst_start_rodata_ = .;   start address */
         *(.rodata)
         /* _dst_end_rodata_ = .;     end address */
/* main.o(.rodata) */
/* global.o(.rodata) */
        _src_start_data_ = .;
    } > ROM AT > ROM

    yet_another_rule = 0xc0fffea2;



    .data : {
    rule_3 = 4;
         _dst_start_data_ = .;    /* start address */
         *(.data)
         _dst_end_data_ = .;      /* end address */
/* main.o(.data) */
/* global.o(.data) */
} > RAM AT > ROM

    .bss : {
        _dst_start_bss_ = .;     /*   start address */
        *(.bss)
         _dst_end_bss_ = .;      /*   end address */
/* main.o(.bss) */
/* global.o(.bss) */


    } > RAM AT > RAM

    /DISCARD/ : {
        * (*)
 }
}