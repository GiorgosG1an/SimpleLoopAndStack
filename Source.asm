TITLE test2
INCLUDE Irvine32.inc

.data
var1 dword 10d
mCalculating   BYTE "Result is...",0dh,0ah,0
mPrevius BYTE "Original number was: ",0





.code

MAIN PROC
	MOV edx, OFFSET mCalculating
	
	mov eax,var1
	mov ecx,5
	push eax 
	l1:
		inc eax
		call WriteString
		call writeint
		call crlf
	
		loop l1
	pop eax
	MOV edx, OFFSET mPrevius
	call writestring
	call writeint
main ENDP

END main 