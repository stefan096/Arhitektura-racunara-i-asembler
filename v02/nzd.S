
	# program racuna NZd dva broja
	#autor :Stefan Bokic , RA-87/2015
	
	.section .data
	.section .text
	.globl main

	main:
		movl $12,%eax
		movl $8,%ebx

	uporedi:
		cmpl %ebx,%eax  # poredi brojeve
		je kraj         # ako su jednaki nzd je on sam 
		ja vece         # ako je a vece od b 
		subl %eax,%ebx   # a ako je b vece od a , od b oduzme a 
		jmp uporedi   # skok na petlju
 
	vece:
		subl %ebx,%eax    # od a oduzme b 
		jmp uporedi	     # i povratak na prvu petlju 

	kraj:
		movl $1,%eax
		movl $0,%ebx
		int $0x80
