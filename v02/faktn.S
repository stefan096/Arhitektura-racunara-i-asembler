# program racuna faktorijal broja n
# autor : Stefan Bokic RA-87/2015

.section .data
n: 
	.long 5
fakt: 
	.long 1
pro:
	.long 0
pom:
	.long 0
.section .text
.globl main
main:
	movl $5, n		
	movl $1, %ecx		
	movl $1, fakt	

petlja:
	cmpl $1, n
	je kraj
				         	#fakt je fakt *n
	movl n, %edx
	movl fakt, %edi

mnozi:
	cmpl $1, %edx
	je izmnozio
	addl %edi, fakt	    #mnozi
	decl %edx			
	jmp mnozi			
	
izmnozio:
	
	decl n
	jmp petlja

kraj:
	movl $1, %eax
	movl $0, %ebx
	int $0x80
