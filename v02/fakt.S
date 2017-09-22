# program racuna faktorijal broja n
# autor : Stefan Bokic RA-87/2015

.section .data
n: 
	.long 5
fakt:
	.long 1
.section .text
.globl main
main:
movl n,%ecx

petlja:
	cmpl $1,n    # brojac ide od 1 do n posto sa jedinicom se ne mora mnoziti
	je kraj       # kad dodje do n imam fakt broja
	movl n,%ecx    #pomocni brojac do n 
	movl fakt,%edx      # pomocna suma od fakta

pomnozi:
	cmpl $1,%ecx   # mnozim n puta jedinicu (fakt je fakt *n)
	je nastavi     # ako je izmnozio moze da uide da smanji brojac i ponovi sve sa n-1
	addl %edx,fakt  #mnozim tako sto uvek dodajem staru vrenost fakta n puta(od brojaca) 
	decl %ecx     # smanjim pomocni brojac
	jmp pomnozi    # skok za mnozenje
           
nastavi:  
	decl n     # smanjuje pravi brojac
 	jmp petlja	 #i skok na prvobitnu petlju 
 
kraj:
	movl $1, %eax
	movl $0, %ebx
	int $0x80
