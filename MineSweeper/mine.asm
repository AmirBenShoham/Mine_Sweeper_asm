locals
dseg	segment
		block	db	15,16,0ffh,15,15,8,1,0ffh,15,2,7,12,8,2,0ffh,15,2,7,12,8,2,0ffh,15,2,7,12,8,2,0ffh
				db	15,2,7,12,8,2,0ffh,15,2,7,12,8,2,0ffh,15,2,7,12,8,2,0ffh,15,2,7,12,8,2,0ffh
				db	15,2,7,12,8,2,0ffh,15,2,7,12,8,2,0ffh,15,2,7,12,8,2,0ffh,15,2,7,12,8,2,0ffh
				db	15,2,7,12,8,2,0ffh,15,2,8,14,0ffh,15,1,8,15,0feh
				
		mine	db	8,16,0ffh,8,1,7,15,0ffh,8,1,7,7,0,1,7,7,0ffh,8,1,7,7,0,1,7,7,0ffh,8,1,7,3,0,1,7,1,0,5,7,1,0,1,7,3,0ffh
				db	8,1,7,4,0,7,7,4,0ffh,8,1,7,3,0,2,15,2,0,5,7,3,0ffh,8,1,7,3,0,2,15,2,0,5,7,3,0ffh,8,1,7,3,0,9,7,3,0ffh
				db	8,1,7,3,0,9,7,3,0ffh,8,1,7,4,0,7,7,4,0ffh,8,1,7,3,0,1,7,1,0,5,7,1,0,1,7,3,0ffh,8,1,7,7,0,1,7,7,0ffh
				db	8,1,7,7,0,1,7,7,0ffh,8,1,7,15,0ffh,8,1,7,15,0feh
				
		flag	db	15,16,0ffh,15,15,8,1,0ffh,15,2,7,12,8,2,0ffh,15,2,7,5,12,3,7,4,8,2,0ffh,15,2,7,3,12,5,7,4,8,2,0ffh,15,2,7,2,12,6,7,4,8,2,0ffh
				db	15,2,7,3,12,5,7,4,8,2,0ffh, 15,2,7,5,12,3,7,4,8,2,0ffh,15,2,7,6,0,2,7,4,8,2,0ffh,15,2,7,6,0,2,7,4,8,2,0ffh
				db	15,2,7,4,0,5,7,3,8,2,0ffh,15,2,7,2,0,9,7,1,8,2,0ffh,15,2,7,2,0,9,7,1,8,2,0ffh,15,2,7,12,8,2,0ffh,15,2,8,14,0ffh,15,1,8,15,0feh
		
		wrongflag	db	12, 1, 15, 14, 12, 1, 255, 15, 1, 12, 1, 15, 12, 12, 1, 8, 1, 255, 15, 2, 12, 1, 7, 10, 12, 1, 8, 2, 255
				db	15, 2, 7, 1, 12, 1, 7, 3, 12, 3, 7, 2, 12, 1, 7, 1, 8, 2, 255, 15, 2, 7, 2, 12, 6, 7, 1, 12, 1, 7, 2, 8, 2, 255
				db	15, 2, 7, 2, 12, 7, 7, 3, 8, 2, 255, 15, 2, 7, 3, 12, 5, 7, 4, 8, 2, 255, 15, 2, 7, 5, 12, 3, 7, 4, 8, 2, 255
				db	15, 2, 7, 5, 12, 2, 0, 1, 7, 4, 8, 2, 255, 15, 2, 7, 4, 12, 1, 7, 1, 0, 1, 12, 1, 7, 4, 8, 2, 255
				db	15, 2, 7, 3, 12, 1, 0, 4, 12, 1, 7, 3, 8, 2, 255, 15, 2, 7, 2, 12, 1, 0, 6, 12, 1, 0, 1, 7, 1, 8, 2, 255
				db	15, 2, 7, 1, 12, 1, 0, 8, 12, 1, 7, 1, 8, 2, 255, 15, 2, 12, 1, 7, 10, 12, 1, 8, 2, 255
				db	15, 1, 12, 1, 8, 12, 12, 1, 8, 1, 255, 12, 1, 8, 14, 12, 1, 254
		
		question	db	15,16,0ffh,15,15,8,1,0ffh,15,2,7,12,8,2,0ffh,15,2,7,4,0,4,7,4,8,2,0ffh,15,2,7,3,0,2,7,2,0,2,7,3, 8,2, 0ffh
				db	15,2,7,3,0,2,7,2,0,2,7,3, 8,2, 0ffh,15,2,7,7,0,2,7,3,8,2,0ffh,15,2,7,6,0,2,7,4,8,2,0ffh,15,2,7,5,0,2,7,5,8,2,0ffh
				db	15,2,7,5,0,2,7,5,8,2,0ffh,15,2,7,12,8,2,0ffh,15,2,7,5,0,2,7,5,8,2,0ffh,15,2,7,5,0,2,7,5,8,2,0ffh,15,2,7,12,8,2,0ffh
				db	15,2,8,14,0ffh,15,1,8,15,0feh
				
		zero	db	8,16,0ffh,8,1,7,15,0ffh,8,1,7,15,0ffh,8,1,7,15,0ffh,8,1,7,15,0ffh,8,1,7,15,0ffh,8,1,7,15,0ffh,8,1,7,15,0ffh
				db	8,1,7,15,0ffh,8,1,7,15,0ffh,8,1,7,15,0ffh,8,1,7,15,0ffh,8,1,7,15,0ffh,8,1,7,15,0ffh,8,1,7,15,0ffh,8,1,7,15,0feh

		one		db	8,16,0ffh,8,1,7,15,0ffh,8,1,7,15,0ffh,8,1,7,7,9,2,7,6,0ffh,8,1,7,6,9,3,7,6,0ffh,8,1,7,5,9,4,7,6,0ffh
				db	8,1,7,4,9,5,7,6,0ffh, 8,1,7,6,9,3,7,6,0ffh, 8,1,7,6,9,3,7,6,0ffh, 8,1,7,6,9,3,7,6,0ffh, 8,1,7,6,9,3,7,6,0ffh
				db	8,1,7,4,9,7,7,4,0ffh,8,1,7,4,9,7,7,4,0ffh,8,1,7,15,0ffh,8,1,7,15,0ffh,8,1,7,15,0feh
				
		two		db	8,16,0ffh,8,1,7,15,0ffh,8,1,7,15,0ffh,8,1,7,3,2,8,7,4,0ffh,8,1,7,2,2,10,7,3,0ffh,8,1,7,2,2,3,7,4,2,3,7,3,0ffh
				db	8,1,7,9,2,3,7,3,0ffh,8,1,7,7,2,4,7,4,0ffh,8,1,7,5,2,5,7,5,0ffh,8,1,7,3,2,5,7,7,0ffh,8,1,7,2,2,4,7,9,0ffh
				db	8,1,7,2,2,10,7,3,0ffh,8,1,7,2,2,10,7,3,0ffh,8,1,7,15,0ffh,8,1,7,15,0ffh,8,1,7,15,0feh

		three	db	8,16,0ffh,8,1,7,15,0ffh,8,1,7,15,0ffh,8,1,7,2,12,9,7,4,0ffh,8,1,7,2,12,10,7,3,0ffh,8,1,7,9,12,3,7,3,0ffh
				db	8,1,7,9,12,3,7,3,0ffh,8,1,7,5,12,6,7,4,0ffh,8,1,7,5,12,6,7,4,0ffh,8,1,7,9,12,3,7,3,0ffh,8,1,7,9,12,3,7,3,0ffh
				db	8,1,7,2,12,10,7,3,0ffh,8,1,7,2,12,9,7,4,0ffh,8,1,7,15,0ffh,8,1,7,15,0ffh,8,1,7,15,0feh

		four	db	8,16,0ffh,8,1,7,15,0ffh,8,1,7,15,0ffh,8,1,7,4,1,3,7,1,1,3,7,4,0ffh,8,1,7,4,1,3,7,1,1,3,7,4,0ffh
				db	8,1,7,3,1,3,7,2,1,3,7,4,0ffh,8,1,7,3,1,3,7,2,1,3,7,4,0ffh,8,1,7,2,1,10,7,3,0ffh,8,1,7,2,1,10,7,3,0ffh
				db	8,1,7,8,1,3,7,4,0ffh,8,1,7,8,1,3,7,4,0ffh,8,1,7,8,1,3,7,4,0ffh,8,1,7,8,1,3,7,4,0ffh,8,1,7,15,0ffh,8,1,7,15,0ffh,8,1,7,15,0feh

		five	db	8,16,0ffh,8,1,7,15,0ffh,8,1,7,15,0ffh,8,1,7,2,4,10,7,3,0ffh,8,1,7,2,4,10,7,3,0ffh,8,1,7,2,4,3,7,10,0ffh
				db	8,1,7,2,4,3,7,10,0ffh,8,1,7,2,4,8,7,5,0ffh,8,1,7,2,4,9,7,4,0ffh,8,1,7,8,4,4,7,3,0ffh,8,1,7,8,4,4,7,3,0ffh
				db	8,1,7,2,4,10,7,3,0ffh,8,1,7,2,4,9,7,4,0ffh,8,1,7,15,0ffh,8,1,7,15,0ffh,8,1,7,15,0feh

		six		db	8,16,0ffh,8,1,7,15,0ffh,8,1,7,15,0ffh,8,1,7,3,3,8,7,4,0ffh,8,1,7,2,3,9,7,4,0ffh,8,1,7,2,3,3,7,10,0ffh
				db	8,1,7,2,3,3,7,10,0ffh,8,1,7,2,3,9,7,4,0ffh,8,1,7,2,3,10,7,3,0ffh,8,1,7,2,3,3,7,4,3,3,7,3,0ffh
				db	8,1,7,2,3,3,7,4,3,3,7,3,0ffh,8,1,7,2,3,10,7,3,0ffh,8,1,7,3,3,8,7,4,0ffh,8,1,7,15,0ffh,8,1,7,15,0ffh,8,1,7,15,0feh

		seven	db	8,16,0ffh,8,1,7,15,0ffh,8,1,7,15,0ffh,8,1,7,2,5,10,7,3,0ffh,8,1,7,2,5,10,7,3,0ffh,8,1,7,9,5,3,7,3,0ffh
				db	8,1,7,9,5,3,7,3,0ffh,8,1,7,8,5,3,7,4,0ffh,8,1,7,8,5,3,7,4,0ffh,8,1,7,7,5,3,7,5,0ffh,8,1,7,7,5,3,7,5,0ffh
				db	8,1,7,6,5,3,7,6,0ffh,8,1,7,6,5,3,7,6,0ffh,8,1,7,15,0ffh,8,1,7,15,0ffh,8,1,7,15,0feh

		eight	db	8,16,0ffh,8,1,7,15,0ffh,8,1,7,15,0ffh,8,1,7,3,8,8,7,4,0ffh,8,1,7,2,8,10,7,3,0ffh,8,1,7,2,8,3,7,4,8,3,7,3,0ffh,8,1,7,2,8,3,7,4,8,3,7,3,0ffh
				db	8,1,7,3,8,8,7,4,0ffh,8,1,7,3,8,8,7,4,0ffh,8,1,7,2,8,3,7,4,8,3,7,3,0ffh,8,1,7,2,8,3,7,4,8,3,7,3,0ffh
				db	8,1,7,2,8,10,7,3,0ffh, 8,1,7,3,8,8,7,4,0ffh,8,1,7,15,0ffh,8,1,7,15,0ffh,8,1,7,15,0feh
				
		redmine	db	8,16,0ffh,8,1,12,15,0ffh,8,1,12,7,0,1,12,7,0ffh,8,1,12,7,0,1,12,7,0ffh,8,1,12,3,0,1,12,1,0,5,12,1,0,1,12,3,0ffh
				db	8,1,12,4,0,7,12,4,0ffh,8,1,12,3,0,2,15,2,0,5,12,3,0ffh,8,1,12,3,0,2,15,2,0,5,12,3,0ffh,8,1,12,3,0,9,12,3,0ffh
				db	8,1,12,3,0,9,12,3,0ffh,8,1,12,4,0,7,12,4,0ffh,8,1,12,3,0,1,7,1,0,5,12,1,0,1,12,3,0ffh,8,1,12,7,0,1,12,7,0ffh
				db	8,1,12,7,0,1,12,7,0ffh,8,1,12,15,0ffh,8,1,12,15,0feh

		long	db	0
		cxst	dw	0
		dxst	dw	0
		
		topy	dw	60
		topx	dw	60
		size	db	16
		size2	dw	16
		
		numcx1	db	?
		numdx1	db	?
		totcx	dw	?
		totdx	dw	?
		howmuch	dw	?

		numboard	db	500 dup(0)
		pressed		db	500	dup(0)
		numcx2	dw	?
		numdx2	dw	?
		maxRndNum	dw ?
		seed    dw 3405H


dseg ends
sseg 	segment stack
		dw	100h	dup(?)
sseg	ends

cseg	segment
assume	cs:cseg, ds: dseg, ss:sseg
include painter.asm
include click.asm
	Start:
			mov ax, dseg
			mov ds, ax
			mov al, 12h
			mov ah, 0h
			int 10h
			
			mov ah, 2
			mov bh, 0
			mov dh, 6
			mov dl, 6
			int 10h
			
			mov dl, 'B'
			int 21h
			mov dl, 'o'
			int 21h
			mov dl, 'a'
			int 21h
			mov dl, 'r'
			int 21h
			mov dl, 'd'
			int 21h
			mov dl, ' '
			int 21h
			mov dl, 'W'
			int 21h
			mov dl, 'i'
			int 21h
			mov dl, 'd'
			int 21h
			mov dl, 't'
			int 21h
			mov dl, 'h'
			int 21h
			mov dl, ':'
			int 21h
			mov dl, ' '
			int 21h
			
			mov ah, 1
			int 21h
			sub al, '0'
			mov bl, 10
			mul bl
			mov bl, al
			mov ah, 1
			int 21h
			cmp al, 0dh
			jz onenum
			sub al, '0'
			add al, bl
			jmp twonum
	onenum:	mov al, bl
			mov ah, 0
			mov bl, 10
			div bl
	twonum:	mov numcx1, al
	
			mov ah, 2
			mov bh, 0
			mov dh, 9
			mov dl, 6
			int 10h
	
			mov dl, 'B'
			int 21h
			mov dl, 'o'
			int 21h
			mov dl, 'a'
			int 21h
			mov dl, 'r'
			int 21h
			mov dl, 'd'
			int 21h
			mov dl, ' '
			int 21h
			mov dl, 'H'
			int 21h
			mov dl, 'e'
			int 21h
			mov dl, 'i'
			int 21h
			mov dl, 'g'
			int 21h
			mov dl, 'h'
			int 21h
			mov dl, 't'
			int 21h
			mov dl, ':'
			int 21h
			mov dl, ' '
			int 21h
			
			mov ah, 1
			int 21h
			sub al, '0'
			mov bl, 10
			mul bl
			mov bl, al
			mov ah, 1
			int 21h
			cmp al, 0dh
			jz onenum1
			sub al, '0'
			add al, bl
			jmp twonum1
	onenum1:	mov al, bl
			mov ah, 0
			mov bl, 10
			div bl
	twonum1:	mov numdx1, al
	
			mov ah, 2
			mov bh, 0
			mov dh, 6
			mov dl, 6
			int 10h
			
			mov dl, ' '
			mov ah, 2
			mov cl, 17
	aaaa:	int 21h
			dec cl
			cmp cl, 0
			jnz aaaa
			
			mov ah, 2
			mov bh, 0
			mov dh, 9
			mov dl, 6
			int 10h
			
			mov dl, ' '
			mov ah, 2
			mov cl, 17
	bbbb:	int 21h
			dec cl
			cmp cl, 0
			jnz bbbb
			
			mov al, size
			mov bl, numcx1
			mul bl
			add ax, topx
			mov totcx, ax
			mov al, size
			mov bl, numdx1
			mul bl
			add ax, topy
			mov totdx, ax
			
	;build board		
			mov cx, topx
			mov dx, topy
			
	odhap:	call paintblock
			add cx, size2
			cmp cx, totcx
			jc odhap
			mov cx, topx
			add dx, size2
			cmp dx, totdx
			jc odhap
			
			mov ax, 0

			include numboard.asm
			
			mov cx, topx
			mov dx, topy
			call painton
			mov bx, numcx2
			mov si, 1
			
	oncemore:	mov ah, 7
			int 21h
			cmp al, 1bh
			jnz up
			jmp endd
	up:		cmp al, 'w'
			jnz down
			sub dx, size2
			cmp dx, topy
			jnc a1
			add dx, size2
			jmp oncemore
	a1:		add dx, size2
			cmp pressed[si][bx],1
			jnz b1
			call pressed1
			jmp b2
	b1:		call notpressed
	b2:		sub dx, size2
			call painton
			sub bx, numcx2;
			jmp oncemore
	down:	cmp al, 's'
			jnz right
			add dx, size2
			cmp dx, totdx
			jc a4
			sub dx, size2
			jmp oncemore
	a4:		sub dx, size2
			cmp pressed[si][bx],1
			jnz b3
			call pressed1
			jmp b4
	b3:		call notpressed
	b4:		add dx, size2
			call painton
			add bx, numcx2;
			jmp oncemore
	right:	cmp al, 'd'
			jnz left
			add cx, size2
			cmp cx, totcx
			jc a3
			sub cx, size2
			jmp oncemore
	a3:		sub cx, size2
			cmp pressed[si][bx],1
			jnz b5
			call pressed1
			jmp b6
	b5:		call notpressed
	b6:		add cx, size2
			call painton
			inc si;
			jmp oncemore
	left:	cmp al, 'a'
			jnz regular
			sub cx, size2
			cmp cx, topx
			jnc a2
			add cx, size2
			jmp oncemore
	a2:		add cx, size2
			cmp pressed[si][bx], 1
			jnz b7
			call pressed1
			jmp b8
	b7:		call notpressed
	b8:		sub cx, size2
			call painton
			dec si;
			jmp oncemore
			
	regular:	cmp al, 'j'
			jz b9
			jmp flag1
	b9:		cmp pressed[si][bx], 2
			jnz c8
			jmp oncemore
	c8:		cmp pressed[si][bx], 3
			jnz c9
			jmp oncemore
	c9:		call click
			call painton
	mine2:	mov al, numboard[si][bx]
			cmp al, 0ffh
			jz c1
			jmp win
	c1:		push cx dx si bx
			mov cx, topx
			mov dx, topy
			mov bx, numcx2
			mov si, 1
			mov di, 1
			
	shev:	mov al, numboard[si][bx]
			cmp al, 0
			jnz one2
			call paintzero
	one2:	cmp al, 1
			jnz two2
			cmp pressed[si][bx], 2
			jz f1
			call paintone
			jmp after
	f1:		call paintwrongflag
	two2:	cmp al, 2
			jnz three2
			cmp pressed[si][bx], 2
			jz f2
			call painttwo
			jmp after
	f2:		call paintwrongflag
	three2:	cmp al, 3
			jnz four2
			cmp pressed[si][bx], 2
			jz f3
			call paintthree
			jmp after
	f3:		call paintwrongflag
	four2:	cmp al, 4
			jnz five2
			cmp pressed[si][bx], 2
			jz f4
			call paintfour
			jmp after
	f4:		call paintwrongflag
	five2:	cmp al, 5
			jnz six2
			cmp pressed[si][bx], 2
			jz f5
			call paintfive
			jmp after
	f5:		call paintwrongflag
	six2:	cmp al, 6
			jnz seven2
			cmp pressed[si][bx], 2
			jz f6
			call paintsix
			jmp after
	f6:		call paintwrongflag
	seven2:	cmp al, 7
			jnz eight2
			cmp pressed[si][bx], 2
			jz f7
			call paintseven
			jmp after
	f7:		call paintwrongflag
	eight2:	cmp al, 8
			jnz mine3
			cmp pressed[si][bx], 2
			jz f8
			call painteight
			jmp after
	f8:		call paintwrongflag
	mine3:	cmp al, 0ffh
			jnz after
			cmp pressed[si][bx], 2
			jz after
			call paintmine
	after:	inc si
			add cx, size2
			cmp si, numcx2
			jz f9
			jmp shev
	f9:		mov si, 1
			add bx, numcx2
			inc di
			mov cx, topx
			add dx, size2
			cmp di, numdx2
			jz f10
			jmp shev
	f10:	pop bx si dx cx
			call paintredmine
			jmp enddd
			
	win:	include win.h
	
	
	flag1:	cmp al, 'k'
			jz c2
			jmp question1
	c2:		cmp pressed[si][bx], 1
			jnz c3
			jmp oncemore
	c3:		cmp pressed[si][bx], 3
			jnz c7
			jmp oncemore
	c7:		cmp pressed[si][bx], 2
			jz back
			call paintflag
			call painton
			mov pressed[si][bx], 2
			jmp oncemore
	back:	call paintblock
			call painton
			mov pressed[si][bx], 0
			jmp oncemore
			
	question1:	cmp al, 'l'
			jz c4
			jmp oncemore
	c4:		cmp pressed[si][bx], 1
			jnz c5
			jmp oncemore
	c5:		cmp pressed[si][bx], 2
			jnz c6
			jmp oncemore
	c6:		cmp pressed[si][bx], 3
			jz back1
			call paintquestion
			call painton
			mov pressed[si][bx], 3
			jmp oncemore
	back1:	call paintblock
			call painton
			mov pressed[si][bx], 0
			jmp oncemore
	
	
	enddd:	mov ah, 7
			int 21h
	endd:	int 3
cseg	ends
end 	start


