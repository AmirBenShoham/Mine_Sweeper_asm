
paintblock 	proc
			push bx
			mov bx, 0
			mov ah, 0ch
			mov cxst, cx
			mov dxst, dx

	@@odha:	mov al, block[bx]
			inc bx
			mov ah, block[bx]
			mov long, ah
			mov ah, 0ch
			inc bx
			
			cmp al, 255
			jnz @@not255
			mov cx, cxst
			inc dx
			dec bx
			jmp @@odha
	@@not255:	cmp al, 254
			jnz @@again1
			mov cx, cxst
			mov dx, dxst
			jmp @@enddd
	@@again1:	int 10h
			inc cx
			dec long
			cmp long, 0
			jnz @@again1
			jmp @@odha
	@@enddd:pop bx
			ret
paintblock		endp	

painton 	proc
			push bx
			mov bx, 1
			mov ah, 0ch
			mov al, 10
	@@shoov:	int 10h
			inc cx
			inc bl
			cmp bl, size
			jnz @@shoov
			mov bl, 1
	@@shoov1:	int 10h
			inc dx
			inc bl
			cmp bl, size
			jnz @@shoov1
			mov bl, 1
	@@shoov2:	int 10h
			dec cx
			inc bl
			cmp bl, size
			jnz @@shoov2
			mov bl, 1
	@@shoov3:	int 10h
			dec dx
			inc bl
			cmp bl, size
			jnz @@shoov3
			pop bx
			ret
painton		endp

pressed1	proc
			push bx
			mov bx, 1
			mov ah, 0ch			
			mov al, 8
	@@shoov:	int 10h
			inc cx
			inc bl
			cmp bl, size
			jnz @@shoov
			int 10h
			mov bl, 2
			inc dx
			mov al, 7
	@@shoov1:	int 10h
			inc dx
			inc bl
			cmp bl, size
			jnz @@shoov1
			int 10h
			mov bl, 2
			dec cx
	@@shoov2:	int 10h
			dec cx
			inc bl
			cmp bl, size
			jnz @@shoov2
			mov bl, 1
			mov al, 8
	@@shoov3:	int 10h
			dec dx
			inc bl
			cmp bl, size
			jnz @@shoov3
			pop bx
			ret
pressed1		endp

notpressed		proc
			push bx
			mov bx, 1
			mov ah, 0ch			
			mov al, 15
	@@shoov:	int 10h
			inc cx
			inc bl
			cmp bl, size
			jnz @@shoov
			int 10h
			mov bl, 2
			inc dx
			mov al, 8
	@@shoov1:	int 10h
			inc dx
			inc bl
			cmp bl, size
			jnz @@shoov1
			int 10h
			mov bl, 2
			dec cx
	@@shoov2:	int 10h
			dec cx
			inc bl
			cmp bl, size
			jnz @@shoov2
			mov bl, 1
			mov al, 15
	@@shoov3:	int 10h
			dec dx
			inc bl
			cmp bl, size
			jnz @@shoov3
			pop bx
			ret
notpressed		endp

paintzero 	proc
			push bx
			mov bx, 0
			mov ah, 0ch
			mov cxst, cx
			mov dxst, dx

	@@odha:	mov al, zero[bx]
			inc bx
			mov ah, zero[bx]
			mov long, ah
			mov ah, 0ch
			inc bx
			
			cmp al, 255
			jnz @@not255
			mov cx, cxst
			inc dx
			dec bx
			jmp @@odha
	@@not255:	cmp al, 254
			jnz @@again1
			mov cx, cxst
			mov dx, dxst
			jmp @@enddd
	@@again1:	int 10h
			inc cx
			dec long
			cmp long, 0
			jnz @@again1
			jmp @@odha
	@@enddd:pop bx
			ret
paintzero		endp

paintone 	proc
			push bx
			mov bx, 0
			mov ah, 0ch
			mov cxst, cx
			mov dxst, dx

	@@odha:	mov al, one[bx]
			inc bx
			mov ah, one[bx]
			mov long, ah
			mov ah, 0ch
			inc bx
			
			cmp al, 255
			jnz @@not255
			mov cx, cxst
			inc dx
			dec bx
			jmp @@odha
	@@not255:	cmp al, 254
			jnz @@again1
			mov cx, cxst
			mov dx, dxst
			jmp @@enddd
	@@again1:	int 10h
			inc cx
			dec long
			cmp long, 0
			jnz @@again1
			jmp @@odha
	@@enddd:pop bx
			ret
paintone		endp

painttwo 	proc
			push bx
			mov bx, 0
			mov ah, 0ch
			mov cxst, cx
			mov dxst, dx

	@@odha:	mov al, two[bx]
			inc bx
			mov ah, two[bx]
			mov long, ah
			mov ah, 0ch
			inc bx
			
			cmp al, 255
			jnz @@not255
			mov cx, cxst
			inc dx
			dec bx
			jmp @@odha
	@@not255:	cmp al, 254
			jnz @@again1
			mov cx, cxst
			mov dx, dxst
			jmp @@enddd
	@@again1:	int 10h
			inc cx
			dec long
			cmp long, 0
			jnz @@again1
			jmp @@odha
	@@enddd:pop bx
			ret
painttwo		endp

paintthree 	proc
			push bx
			mov bx, 0
			mov ah, 0ch
			mov cxst, cx
			mov dxst, dx

	@@odha:	mov al, three[bx]
			inc bx
			mov ah, three[bx]
			mov long, ah
			mov ah, 0ch
			inc bx
			
			cmp al, 255
			jnz @@not255
			mov cx, cxst
			inc dx
			dec bx
			jmp @@odha
	@@not255:	cmp al, 254
			jnz @@again1
			mov cx, cxst
			mov dx, dxst
			jmp @@enddd
	@@again1:	int 10h
			inc cx
			dec long
			cmp long, 0
			jnz @@again1
			jmp @@odha
	@@enddd:pop bx
			ret
paintthree		endp

paintfour 	proc
			push bx
			mov bx, 0
			mov ah, 0ch
			mov cxst, cx
			mov dxst, dx

	@@odha:	mov al, four[bx]
			inc bx
			mov ah, four[bx]
			mov long, ah
			mov ah, 0ch
			inc bx
			
			cmp al, 255
			jnz @@not255
			mov cx, cxst
			inc dx
			dec bx
			jmp @@odha
	@@not255:	cmp al, 254
			jnz @@again1
			mov cx, cxst
			mov dx, dxst
			jmp @@enddd
	@@again1:	int 10h
			inc cx
			dec long
			cmp long, 0
			jnz @@again1
			jmp @@odha
	@@enddd:pop bx
			ret
paintfour		endp

paintfive 	proc
			push bx
			mov bx, 0
			mov ah, 0ch
			mov cxst, cx
			mov dxst, dx

	@@odha:	mov al, five[bx]
			inc bx
			mov ah, five[bx]
			mov long, ah
			mov ah, 0ch
			inc bx
			
			cmp al, 255
			jnz @@not255
			mov cx, cxst
			inc dx
			dec bx
			jmp @@odha
	@@not255:	cmp al, 254
			jnz @@again1
			mov cx, cxst
			mov dx, dxst
			jmp @@enddd
	@@again1:	int 10h
			inc cx
			dec long
			cmp long, 0
			jnz @@again1
			jmp @@odha
	@@enddd:pop bx
			ret
paintfive		endp

paintsix 	proc
			push bx
			mov bx, 0
			mov ah, 0ch
			mov cxst, cx
			mov dxst, dx

	@@odha:	mov al, six[bx]
			inc bx
			mov ah, six[bx]
			mov long, ah
			mov ah, 0ch
			inc bx
			
			cmp al, 255
			jnz @@not255
			mov cx, cxst
			inc dx
			dec bx
			jmp @@odha
	@@not255:	cmp al, 254
			jnz @@again1
			mov cx, cxst
			mov dx, dxst
			jmp @@enddd
	@@again1:	int 10h
			inc cx
			dec long
			cmp long, 0
			jnz @@again1
			jmp @@odha
	@@enddd:pop bx
			ret
paintsix		endp

paintseven 	proc
			push bx
			mov bx, 0
			mov ah, 0ch
			mov cxst, cx
			mov dxst, dx

	@@odha:	mov al, seven[bx]
			inc bx
			mov ah, seven[bx]
			mov long, ah
			mov ah, 0ch
			inc bx
			
			cmp al, 255
			jnz @@not255
			mov cx, cxst
			inc dx
			dec bx
			jmp @@odha
	@@not255:	cmp al, 254
			jnz @@again1
			mov cx, cxst
			mov dx, dxst
			jmp @@enddd
	@@again1:	int 10h
			inc cx
			dec long
			cmp long, 0
			jnz @@again1
			jmp @@odha
	@@enddd:pop bx
			ret
paintseven		endp

painteight 	proc
			push bx
			mov bx, 0
			mov ah, 0ch
			mov cxst, cx
			mov dxst, dx

	@@odha:	mov al, eight[bx]
			inc bx
			mov ah, eight[bx]
			mov long, ah
			mov ah, 0ch
			inc bx
			
			cmp al, 255
			jnz @@not255
			mov cx, cxst
			inc dx
			dec bx
			jmp @@odha
	@@not255:	cmp al, 254
			jnz @@again1
			mov cx, cxst
			mov dx, dxst
			jmp @@enddd
	@@again1:	int 10h
			inc cx
			dec long
			cmp long, 0
			jnz @@again1
			jmp @@odha
	@@enddd:pop bx
			ret
painteight		endp

paintmine 	proc
			push bx
			mov bx, 0
			mov cxst, cx
			mov dxst, dx

	@@odha:	mov al, mine[bx]
			inc bx
			mov ah, mine[bx]
			mov long, ah
			mov ah, 0ch
			inc bx
			
			cmp al, 0ffh
			jnz @@not255
			mov cx, cxst
			inc dx
			dec bx
			jmp @@odha
	@@not255:	cmp al, 0feh
			jnz @@again1
			mov cx, cxst
			mov dx, dxst
			jmp @@enddd
	@@again1:	int 10h
			inc cx
			dec long
			cmp long, 0
			jnz @@again1
			jmp @@odha
	@@enddd:pop bx
			ret
paintmine		endp

paintredmine 	proc
			push bx
			mov bx, 0
			mov ah, 0ch
			mov cxst, cx
			mov dxst, dx

	@@odha:	mov al, redmine[bx]
			inc bx
			mov ah, redmine[bx]
			mov long, ah
			mov ah, 0ch
			inc bx
			
			cmp al, 255
			jnz @@not255
			mov cx, cxst
			inc dx
			dec bx
			jmp @@odha
	@@not255:	cmp al, 254
			jnz @@again1
			mov cx, cxst
			mov dx, dxst
			jmp @@enddd
	@@again1:	int 10h
			inc cx
			dec long
			cmp long, 0
			jnz @@again1
			jmp @@odha
	@@enddd:pop bx
			ret
paintredmine		endp

paintflag	proc
			push bx
			mov bx, 0
			mov ah, 0ch
			mov cxst, cx
			mov dxst, dx

	@@odha:	mov al, flag[bx]
			inc bx
			mov ah, flag[bx]
			mov long, ah
			mov ah, 0ch
			inc bx
			
			cmp al, 255
			jnz @@not255
			mov cx, cxst
			inc dx
			dec bx
			jmp @@odha
	@@not255:	cmp al, 254
			jnz @@again1
			mov cx, cxst
			mov dx, dxst
			jmp @@enddd
	@@again1:	int 10h
			inc cx
			dec long
			cmp long, 0
			jnz @@again1
			jmp @@odha
	@@enddd:pop bx
			ret
paintflag		endp

paintquestion	proc
			push bx
			mov bx, 0
			mov ah, 0ch
			mov cxst, cx
			mov dxst, dx

	@@odha:	mov al, question[bx]
			inc bx
			mov ah, question[bx]
			mov long, ah
			mov ah, 0ch
			inc bx
			
			cmp al, 255
			jnz @@not255
			mov cx, cxst
			inc dx
			dec bx
			jmp @@odha
	@@not255:	cmp al, 254
			jnz @@again1
			mov cx, cxst
			mov dx, dxst
			jmp @@enddd
	@@again1:	int 10h
			inc cx
			dec long
			cmp long, 0
			jnz @@again1
			jmp @@odha
	@@enddd:pop bx
			ret
paintquestion		endp
paintwrongflag	proc
			push bx
			mov bx, 0
			mov ah, 0ch
			mov cxst, cx
			mov dxst, dx

	@@odha:	mov al, wrongflag[bx]
			inc bx
			mov ah, wrongflag[bx]
			mov long, ah
			mov ah, 0ch
			inc bx
			
			cmp al, 255
			jnz @@not255
			mov cx, cxst
			inc dx
			dec bx
			jmp @@odha
	@@not255:	cmp al, 254
			jnz @@again1
			mov cx, cxst
			mov dx, dxst
			jmp @@enddd
	@@again1:	int 10h
			inc cx
			dec long
			cmp long, 0
			jnz @@again1
			jmp @@odha
	@@enddd:pop bx
			ret
paintwrongflag		endp
