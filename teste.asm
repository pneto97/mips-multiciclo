.data 
array:	
.word	1 2 3 4 5 6 7 8 9 10


.text
	
addi	$t0, $zero, 2		# t0 = 2
	
ori	$t1, $t0, 16 		# t1 = 1E
	
srl	$t2, $t1, 2		# t2 = 7

andi	$t3, $t2, 1		# t3 = 1

la	$t4, array		# t4 = &array[0]

sw 	$t2, 0($t4)		# store no endereco do array o valor 7

lw 	$t4, 0($t4)		#  t4 = 7


