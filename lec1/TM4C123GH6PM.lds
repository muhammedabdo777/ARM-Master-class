MEMORY
{
    FLASH (RX) : ORIGIN = 0x00000000, LENGTH = 0x00040000

    SRAM (RWX) : ORIGIN = 0x20000000, LENGTH = 0x00008000
	
	MY_MEMORY (RX) : ORIGIN = 0X00001000, LENGTH = 0x00000070
}

SECTIONS
{
	.sprint (0x1000) : AT (0x1000)
  {
    
    
	*(.sprint*)
    
  } > FLASH
	
	
    .text :
    {
        _text = .;
        KEEP(*(.isr_vector))
        *(.text*)
        *(.rodata*)
        _etext = .;
    } > FLASH

    .data : AT(ADDR(.text) + SIZEOF(.text))
    {
        _data = .;
        *(vtable)
        *(.data*)
        _edata = .;
    } > SRAM

    .bss :
    {
        _bss = .;
        *(.bss*)
        *(COMMON)
        _ebss = .;
    } > SRAM
}