# program koji mnozi dva broja
# autor : Stefan Bokic RA-87/2015

.section .data
a:
	.long 10
b: 
	.long 3
c:
	.long 0
.section .text
.globl main
main:
	movl $0,%eax    
	movl $0,%ebx

petlja:
	cmpl %ebx,b      # ide od 0 do b posto b puta treba pomnoziti a 
	je dodela       # ako je stigao do b treba smestiti jos vrednost
	addl a,%eax     # dodaje jedno a u proizvod
	incl %ebx      # povecava brojac
	jmp petlja   # skok na petlju
 
dodela:
	movl %eax,c    # smesta vrednost u proizvod

kraj:
	movl $1,%eax
	movl $0,%ebx
	int $0x80 
	
