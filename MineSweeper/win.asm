
			push si bx di cx dx
			mov si, 1
			mov di, 1
			mov bx, numcx2
	@@shoov:	cmp numboard[si][bx], 9
			jc @@end
			inc si
			cmp si, numcx2
			jnz @@shoov
			mov si, 1
			inc di
			add bx, numcx2
			cmp di, numdx2
			jnz @@shoov
			
			mov si, 1
			mov di, 1
			mov bx, numcx2
			mov cx, topx
			mov dx, topy
	@@shoov1:	cmp numboard[si][bx], 0ffh
			jnz @@a1
			call paintflag
	@@a1:	inc si
			add cx, size2
			cmp si, numcx2
			jnz @@shoov1
			mov si, 1
			mov cx, topx
			inc di
			add bx, numcx2
			add dx, size2
			cmp di, numdx2
			jnz @@shoov1
			
			mov ah, 2
			mov dh, 2
			mov dl, 6
			int 10h
			
			mov dl, 'Y'
			int 21h
			mov dl, 'o'
			int 21h
			mov dl, 'u'
			int 21h
			mov dl, ' '
			int 21h
			mov dl, 'W'
			int 21h
			mov dl, 'o'
			int 21h
			mov dl, 'n'
			int 21h
			jmp enddd

	@@end:	pop dx cx di bx si
