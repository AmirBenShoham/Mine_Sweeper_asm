			
			inc numcx1
			inc numdx1
			mov ah, 0
			mov al, numcx1
			mov numcx2, ax
			mov al, numdx1
			mov numdx2, ax
			
			mov al, numcx1
			mov ah, numdx1
			mul ah
			mov maxRndNum, ax
			mov bh, 7
			div bh
			mov ah, 0
			mov si, ax
			
	Shoov:	mov ah, 2ch
			int 21h
			mov ax, dx               ;Ah = seconds   AL = 100th of a second (0..99)
			rol al, 4
			ror ah, 4
			mov bx, seed
			mul bx    
			rol seed, 1
			add ax, 100
			mov dx, 0
			mov cx, maxRndNum
			div cx
			mov bx, dx
			cmp numboard[bx], 0ffh
			jz Shoov
			cmp bx, numcx2
			jc Shoov
			
			mov di, numdx2
			mov dx, numcx2
	ag1:	cmp dx, bx
			jz Shoov
			add dx, numcx2
			dec di
			cmp di, 0
			jnz ag1

	con:	dec si
			mov numboard[bx], 0ffh
			cmp si, 0
			jnz Shoov
			
			mov ah, 2
			mov dl, 10
			int 21h
			int 21h
			
			mov dl, 10
			mov ah, 2
			int 21h
			mov si, 1
			mov bx, numcx2
			mov di, 1
	again2:	cmp numboard[si][bx], 0ffh
			jz mine1
			mov cl, 0
			dec si
			cmp numboard[si][bx], 0ffh
			jnz u1
			inc cl
	u1:		sub bx, numcx2
			cmp numboard[si][bx], 0ffh
			jnz u2
			inc cl
	u2:		inc si
			cmp numboard[si][bx], 0ffh
			jnz u3
			inc cl
	u3:		inc si
			cmp numboard[si][bx], 0ffh
			jnz u4
			inc cl
	u4:		add bx, numcx2
			cmp numboard[si][bx], 0ffh
			jnz u5
			inc cl
	u5:		add bx, numcx2
			cmp numboard[si][bx], 0ffh
			jnz u6
			inc cl
	u6:		dec si
			cmp numboard[si][bx], 0ffh
			jnz u7
			inc cl
	u7:		dec si
			cmp numboard[si][bx], 0ffh
			jnz u8
			inc cl			
	u8:		inc si
			sub bx, numcx2
			mov numboard[si][bx], cl
	mine1:	inc si
			cmp si, numcx2
			jz u10
			jmp again2
	u10:	mov si, 1
			inc di
			add bx, numcx2
			mov dl, 10
			int 21h
			cmp di, numdx2
			jz u9
			jmp again2
	
	u9:		mov si, 0
			mov bx, 0
			mov di, 1
	right1:	mov numboard[si][bx], 0eeh
			inc si
			cmp si, numcx2
			jnz right1
			mov numboard[si][bx], 0eeh
			add bx, numcx2
	up1:	mov numboard[si][bx], 0eeh
			add bx, numcx2
			inc di
			cmp di, numdx2
			jnz up1
			mov numboard[si][bx], 0eeh
			dec si
	left1:	mov numboard[si][bx], 0eeh
			dec si
			cmp si, 0
			jnz left1
			mov numboard[si][bx], 0eeh
			sub bx, numcx2
	down1:	mov numboard[si][bx], 0eeh
			dec di
			sub bx, numcx2
			cmp di, 0
			jnz down1
		
		
			
			
			