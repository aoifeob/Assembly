	AREA	Polynomial, CODE, READONLY
	IMPORT	main
	EXPORT	start

start
	; let r1 store x
  mul r0,r1,r1 ; r0 <- x^2
  mul r0,r1,r0 ;r0 <- x^3
  mul r0,r1,r0 ;r0 <- x^4
  LDR r2,=6	; temp r2 <- 6
  mul r0,r2,r0 ;r0 <- 6*x^4

  mul r2,r1,r1 ; r2<- x^2
  LDR r3,=4 ; temp r3 <- 4
  mul r2,r3,r2 ; r2<-4*x^2

  SUB r0,r0,r2; r0<- (6*x^4)-(4*x^2)

  LDR r2,=6 ;r2<- 6
  mul r2,r1,r2; r2<- x*6

  ADD r0,r0,r2 ;r0<- [(6*x^4)-(4*x^2)]+6x


	
stop	B	stop

	END	
