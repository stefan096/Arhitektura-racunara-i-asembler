
# program sabira prvih n prirodnih brojeva
# autor : Stefan Bokic RA-87/2015

.section .data
n: 
	.long 3
suma: 
	.long 0

.section .text
.globl main

main:
	movl n,%ecx
	movl $0,%eax

petlja:
	cmpl n,%eax     # brojac ide od n do 0
	je dodela       # ako je dosao 0 treba da dodeli vrednost
	movl n,%ecx
	addl %ecx,suma  # dodaje n nakon cega smanji n za 1 
	decl n
	jmp petlja
	
dodela:
	movl suma,%ecx	    # smesta sumu u registar
	
kraj:
	movl $1,%eax
	movl $0,%ebx
	int $0x80 
	
		
