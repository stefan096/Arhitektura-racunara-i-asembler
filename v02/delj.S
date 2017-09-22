# program koji  celobrojno deli dva neoznacena  broja i racuna njihov ostatak 
# autor : Stefan Bokic RA-87/2015

.section .data
a:
	.long 10
b: 
	.long 3
c:
	.long 0
o:
	.long 0

.section .text
.globl main
main:
	movl $0,%eax  
	movl b,%ecx
	
petlja:
	cmpl %ecx,a     #poredi dva broja da vidi jel deljenik veci od delioca
	jb dodela  
	subl %ecx,a   # smanjuje a za jedno b
	incl %eax     # povecava kolicnik za 1
	jmp petlja    # skok na petlju

dodela:         # posto je delioc veci od deljenika upada ovde 
	movl %eax,c  # kolicnik je nula
	movl a,%ebx  # a ostatak je a 
	movl %ebx,o

kraj:
	movl $1,%eax
	movl $0,%ebx
	int $0x80 
	
