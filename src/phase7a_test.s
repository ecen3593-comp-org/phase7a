// Section .crt0 is always placed from address 0
	.section .crt0, "ax"

// x1 - 0x1
// x2 - 0x1
// x3 - 0x1000
// x4 - 0x1
// x5 - 0x1
// x6 - 0x0
// x7 - 0xfffffffe
// x8 - 0x1198
// x9 - 0x51a4
// x10 - 0x1
// x11 - 0x0
// x12 - 0xffff000
// x13 - 0x1
// x14 - 0x1
// x15 - 0x1
// x16 - 0xfffffff
// x17 - 0x1
// x18 - 0x0
// x19 - 0x40000000
// x20 - 0x19c
// x21 - 0x11a0
// x22 - 0x80000000
// x23 - 0x0
// x24 - 0xfffffff
// x25 - 0x0 
// x26 - 0x1
// x27 - 0x1000
// x28 - 0xfffffff
// x29 - 0x1
// x30 - 0xfffffff
// x31 - 0x1

//Symbol start is used to obtain entry point information
_start:
    .global _start

    li x31, 1
    li x30, -1

    //Testing addi: case 1//
    addi x1, x0, 1
    addi x2, x0, -1
    addi x3, x30, -1
    addi x4, x31, -1

    //Testing ori: case 2//
    addi x1, x0, 1

    ori x5, x0, 0
    ori x6, x0, -1
    ori x7, x31, -1
    ori x8, x31, 0
    
    //Testing xori: case 3//
    addi x1, x0, 1

    xori x9, x31, 0
    xori x10, x0, -1
    xori x11, x31, -1
    xori x12, x0, 0

    //Testing andi: case 4//
    addi x1, x0, 1

    andi x13, x31, 0
    andi x14, x0, -1
    andi x15, x31, -1
    andi x16, x0, 0

    //Testing slti: case 5//
    addi x1, x0, 1

    slti x17, x31, 0
    slti x18, x0, 0
    slti x19, x31, -1
    slti x20, x31, -1
    
    //Testing sltiu: case 6//
    addi x1, x0, 1

    sltiu x21, x31, 0
    sltiu x22, x0, 0
    sltiu x23, x31, -1
    sltiu x24, x31, -1

    //Testing slli: case 7//
    addi x1, x0, 1

    slli x25, x31, 0
    slli x26, x0, 0
    slli x27, x31, -1
    slli x28, x31, -1

    //Testing srli: case 8//
    addi x1, x0, 1

    srli x29, x31, 0
    srli x2, x3 , 0
    srli x3, x5, -1
    srli x4, x7, -1

    //Testing srai: case 9//
    addi x1, x0, 1

    srai x5, x9, 0
    srai x6, x11 , 0
    srai x7, x13, -1
    srai x8, x15, -1

    //Testing add: case 10//
    addi x1, x0, 1

    add x9, x11, x0
    add x10, x12, x31
    add x11, x13, x30
    add x12, x14, x31
    
    //Testing sub: case 11//
    addi x1, x0, 1
    
    sub x13, x15, x13
    sub x14, x16, x12
    sub x15, x17, x11
    sub x16, x18, x10

    //Testing and: case 12//
    addi x1, x0, 1

    and x17, x15, x31
    and x18, x16, x0
    and x19, x17, x31
    and x20, x18, x0
    
    //Testing or: case 13//
    addi x1, x0, 1
    
    or x21, x19, x18
    or x22, x20, x15
    or x23, x21, x12
    or x24, x22, x9
    
    //Testing xor: case 14//
    addi x1, x0, 1
    
    xor x25, x15, x5
    xor x26, x16, x6
    xor x27, x10, x4
    xor x28, x11, x3

    //Testing slt: case 15//
    addi x1, x0, 1
    
    slt x7, x20, x10
    slt x8, x21, x11
    slt x3, x19, x18
    slt x2, x18, x17

    //Testing sltu: case 16//
    addi x1, x0, 1

    sltu x7, x30, x31
    sltu x9, x30, x0
    sltu x14, x19, x18
    sltu x11, x18, x17
    
    //Testing sll: case 17//
    addi x1, x0, 1
    
    sll x7, x30, x31
    sll x9, x30, x0
    sll x14, x19, x18
    sll x11, x18, x17

    //Testing srl: case 18//
    addi x1, x0, 1
    
    sll x19, x12, x7
    sll x20, x17, x12
    sll x21, x30, x2
    sll x22, x31, x9

    //Testing sra: case 19//
    addi x1, x0, 1

    sra x6, x8, x9
    sra x9, x1, x23
    sra x12, x4, x16
    sra x23, x2, x31

    //Testing lui: case 20//
    addi x1, x0, 1

    lui x12, -1
    lui x3, 1
    lui x23, 0
    lui x27, 1    

    //Testing auipc: case 21//
    addi x1, x0, 1
    
    auipc x8, 0
    auipc x20, -1
    auipc x21, 0
    auipc x9, 4  

FINISH:
	nop
	nop
	nop
	nop
	nop // Check if the values in your registers are correct
	halt
	nop
	nop
	nop
