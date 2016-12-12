start
	  	LDR r0, =2   ;test value
		LDR r1, = 32 ;counter
		LDR r2, =0   ;store reversed bits
 	
while		CMP r1, #0	   ; while (r1 != 0){
		BEQ endwhile	   ; 
	  	MOVS r0, r0,LSL #1 ; r0=r0<<1, Carry-flag=r0[MSB]
		RRX r2, r2         ; r2=r2>>1, r2[MSB]=Carry-flag
		SUB r1, r1, #1	   ; r1=r1-1
		B while            ; 
endwhile			   ; }

		MOV r0, r2		   ; r0=r2


stop	B	stop

	END	
