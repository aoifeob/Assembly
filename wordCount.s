start
		LDR r1, =teststr	 ;r1<-teststr
		STR r0, [r1]		 ;r0=Memory.word[r1]
		LDR r2, =0 			 ;r2<-0, word counter
		LDR r3, =1			 ;r3<-1, increment counter
 	
		B cmpwh1			 ;while((r0=Memory.word[r1]) != 0 AND r3!=33) {
while1	CMP r3, #33
		BEQ while1											
		B if1				  ;if (r0=space in string){
if1		CMP r0, #0x20		  
		BNE endif1			  
		ADD r2, r2, #1		  ; r2++
endif1						  ;}
		ADD r3,r3,#1		  ; r3++
		LDRB r0, [r1], r3

cmpwh1	LDRB r0, [r1], #1    ;}
		CMP r0, #0
		BNE while1

		ADD r2, r2, #1		; r2++

stop	B	stop

		AREA 	TestData, DATA, READWRITE
teststr	DCB  	"hello this is a test",0

	END	
