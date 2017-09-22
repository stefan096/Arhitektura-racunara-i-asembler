# program racuna fibonacijeve brojeve n-ti broj
# autor : Stefan Bokic RA-87/2015

.section .data
n: 
	.long 5
f1:
	.long 1
f2:
	.long 1
.section .text
.globl main

main:
	
	 
	movl f2,%ebx   #popunjava registre sa f2
                    
petlja:
	cmpl $0,n     # petlja ide od 0 do n
	je kraj       # ako je dosao do n stigao sam do n tog fib broja
	movl f2,%eax    
	addl %eax,f1  # dodaje drugi na prvi i sacuva ga u prvom 
	movl f1,%eax    
	movl f2,%ebx     
	xchgl %eax,%ebx  # f1 i f2 smesta u registre pposto nisu na pravom mesto pa moraju da im se razmene vrednosti 
	movl %eax,f1    
	movl %ebx,f2     # smesta prave vrednosti 
	decl n       
	jmp petlja     # smanjuje brojac i skok na petlju 
 
kraj:
	movl $1, %eax
	movl $0, %ebx
	int $0x80

	 
