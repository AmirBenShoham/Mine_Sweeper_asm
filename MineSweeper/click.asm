click		proc
			push si bx cx dx
			mov pressed[si][bx], 1
			mov al, numboard[si][bx]
	@@one1:	cmp al, 1
			jnz @@two1
			call paintone
			add numboard[si][bx], 10
			jmp @@endd
	@@two1:	cmp al, 2
			jnz @@three1
			call painttwo
			add numboard[si][bx], 10
			jmp @@endd
	@@three1:	cmp al, 3
			jnz @@four1
			call paintthree
			add numboard[si][bx], 10
			jmp @@endd
	@@four1:	cmp al, 4
			jnz @@five1
			call paintfour
			add numboard[si][bx], 10
			jmp @@endd
	@@five1:	cmp al, 5
			jnz @@six1
			call paintfive
			add numboard[si][bx], 10
			jmp @@endd
	@@six1:	cmp al, 6
			jnz @@seven1
			call paintsix
			add numboard[si][bx], 10
			jmp @@endd
	@@seven1:	cmp al, 7
			jnz @@eight1
			call paintseven
			add numboard[si][bx], 10
			jmp @@endd
	@@eight1:	cmp al, 8
			jnz @@zero1
			call painteight
			add numboard[si][bx], 10
			jmp @@endd
	@@zero1:	cmp al, 0
			jnz @@endd
			call paintzero
			add numboard[si][bx], 10
			inc si
			add cx, size2
			add bx, numcx2
			add dx, size2
			call click
			dec si
			sub cx, size2
			call click
			dec si
			sub cx, size2
			call click
			sub bx, numcx2
			sub dx, size2
			call click
			sub bx, numcx2
			sub dx, size2
			call click
			inc si
			add cx, size2
			call click
			inc si
			add cx, size2
			call click
			add bx, numcx2
			add dx, size2
			call click
	@@endd:	
			pop dx cx bx si
			ret
click		endp	