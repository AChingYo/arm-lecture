	.syntax unified
	.arch armv7-a
	.text
	.align 2
	.thumb
	.thumb_func

	.global fibonacci
	.type fibonacci, function

fibonacci:
	push {lr}
	
	mov r1, #0
	mov r2, #1
	
	cmp r0, #0
	beq .L3
	
	cmp r0, #1
	beq .L3
.loop:
	cmp r0, #2
	sub r0, r0, #1
	add r3, r1, r2
	mov r1, r2
	mov r2, r3
	bne  .loop
	
	mov r0, r2
	pop {pc}

.L3:
	pop {pc}

	.size fibonacci, .-fibonacci
	.end
