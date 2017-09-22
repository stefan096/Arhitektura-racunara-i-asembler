
	# program racuna malo naprednje nzd
	# autor : Stefan Bokic RA-87/2015
	
	.section .data
	.section .text
	.globl main

	main:
		movl $12,%eax
		movl $8,%ebx
		
	uporedi:
		cmpl %ebx,%eax  
		je kraj
		ja vece           # ako je a veci oduzme ga od a i smesti u a u labeli vece
		xchgl %ebx,%eax   # a ako nije samo im zameni vrednosti pa ce biti 
		
	vece:
		subl %ebx,%eax
		jmp uporedi
	
	kraj:
		movl $1,%eax
		movl $0,%ebx
		int $0x80 
