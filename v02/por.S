# program poredi registre ebx i ecx i u zavisnosti od njih u eax pise nesto 
# autor : Stefan Bokic RA-87/2015

.section .data
.section .text
.globl main

main:
	movl $15,%ebx
	movl $10, %ecx
	
	cmpl %ecx,%ebx
	ja vece
	jb manje
	movl $0,%eax
	jmp kraj

vece:
	movl $1,%eax
	jmp kraj

manje:
	movl $2,%eax 	
	
kraj:
	movl $1,%eax
	movl $0,%ebx
	int $0x80 
