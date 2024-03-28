; 
; CSCI268 - Asgn 1 - Data Definitions
;
; Miranda Morris
; 3/20/2024
; This code is meant to define all the different data types
; contained in Table 3-2 in Section 3.4. Then it initializes
; each variable to a value that is consistent with its data
; type.


.586
.model flat, stdcall
option casemap : none; case-sensitive

ExitProcess proto,dwExitCode:dword

.data ; showing this is the data area 

count BYTE 20h ; creating a byte variable (8-bit unsigned integer) named count
signed SBYTE -10 ; creating a signed byte variable (8-bit signed integer) named signed
hours WORD 24h ; creating a word variable (16-bit unsigned integer) named hours
years SWORD +2024 ; creating a signed word variable (16-bit signed integer) named year
numbers DWORD 123456 ; creating a double word variable (32-bit unsigned integer) named numbers
liters SDWORD +90398287 ; creating a signed double word variable (32-bit signed integer) named liters
zero FWORD 0; creating a far pointer in protected mode word variable (48-bit integer) named zero
quad QWORD 67846381363 ; creating a quad word variable (64-bit integer) named quad
ten TBYTE 100893047287832 ; creating a ten-byte variable (80-bit (10-byte) integer) named ten
negative REAL4 -9.81 ; creating an IEEE short real (32-bit (4-byte) integer) named negative
cans REAL8 1.2E+100 ; creating an IEEE long real (64-bit (8-byte) integer) named cans
huge REAL10 -5.7891234E-23 ; creating an IEEE extended real (80-bit (10-byte) integer) named huge

.code ; showing this is the code area
main proc

    invoke ExitProcess,0 ; calls a Windows service (also known as a function named ExitProcess that halts the program and returns)
main endp ; is the ending marker of the main procedure.

end main