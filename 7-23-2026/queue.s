	.file	"queue.c"
# GNU C11 (Ubuntu 13.3.0-6ubuntu2~24.04.1) version 13.3.0 (x86_64-linux-gnu)
#	compiled by GNU C version 13.3.0, GMP version 6.3.0, MPFR version 4.2.1, MPC version 1.3.1, isl version isl-0.26-GMP

# GGC heuristics: --param ggc-min-expand=100 --param ggc-min-heapsize=131072
# options passed: -mtune=generic -march=x86-64 -O0 -std=c11 -fasynchronous-unwind-tables -fstack-protector-strong -fstack-clash-protection -fcf-protection
	.text
	.section	.rodata
.LC0:
	.string	"%d\n"
	.text
	.globl	main
	.type	main, @function
main:
.LFB0:
	.cfi_startproc
	endbr64	
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$32, %rsp	#,
# queue.c:21: int main(void) {
	movq	%fs:40, %rax	# MEM[(<address-space-1> long unsigned int *)40B], tmp111
	movq	%rax, -8(%rbp)	# tmp111, D.2661
	xorl	%eax, %eax	# tmp111
# queue.c:23:     initQueue(&q);
	leaq	-32(%rbp), %rax	#, tmp89
	movq	%rax, %rdi	# tmp89,
	call	initQueue	#
# queue.c:24:     enqueue(&q, 10);
	leaq	-32(%rbp), %rax	#, tmp90
	movl	$10, %esi	#,
	movq	%rax, %rdi	# tmp90,
	call	enqueue	#
# queue.c:25:     enqueue(&q, 20);
	leaq	-32(%rbp), %rax	#, tmp91
	movl	$20, %esi	#,
	movq	%rax, %rdi	# tmp91,
	call	enqueue	#
# queue.c:26:     enqueue(&q, 30);
	leaq	-32(%rbp), %rax	#, tmp92
	movl	$30, %esi	#,
	movq	%rax, %rdi	# tmp92,
	call	enqueue	#
# queue.c:27:     enqueue(&q, 60);
	leaq	-32(%rbp), %rax	#, tmp93
	movl	$60, %esi	#,
	movq	%rax, %rdi	# tmp93,
	call	enqueue	#
# queue.c:28:     enqueue(&q, 80);
	leaq	-32(%rbp), %rax	#, tmp94
	movl	$80, %esi	#,
	movq	%rax, %rdi	# tmp94,
	call	enqueue	#
# queue.c:29:     enqueue(&q, 90);
	leaq	-32(%rbp), %rax	#, tmp95
	movl	$90, %esi	#,
	movq	%rax, %rdi	# tmp95,
	call	enqueue	#
# queue.c:30:     enqueue(&q, 70);
	leaq	-32(%rbp), %rax	#, tmp96
	movl	$70, %esi	#,
	movq	%rax, %rdi	# tmp96,
	call	enqueue	#
# queue.c:31:     printQueue(&q);
	leaq	-32(%rbp), %rax	#, tmp97
	movq	%rax, %rdi	# tmp97,
	call	printQueue	#
# queue.c:32:     printf("%d\n", dequeue(&q));
	leaq	-32(%rbp), %rax	#, tmp98
	movq	%rax, %rdi	# tmp98,
	call	dequeue	#
# queue.c:32:     printf("%d\n", dequeue(&q));
	movl	%eax, %esi	# _1,
	leaq	.LC0(%rip), %rax	#, tmp99
	movq	%rax, %rdi	# tmp99,
	movl	$0, %eax	#,
	call	printf@PLT	#
# queue.c:33:     enqueue(&q, 40);
	leaq	-32(%rbp), %rax	#, tmp100
	movl	$40, %esi	#,
	movq	%rax, %rdi	# tmp100,
	call	enqueue	#
# queue.c:34:     printf("%d\n", dequeue(&q));
	leaq	-32(%rbp), %rax	#, tmp101
	movq	%rax, %rdi	# tmp101,
	call	dequeue	#
# queue.c:34:     printf("%d\n", dequeue(&q));
	movl	%eax, %esi	# _2,
	leaq	.LC0(%rip), %rax	#, tmp102
	movq	%rax, %rdi	# tmp102,
	movl	$0, %eax	#,
	call	printf@PLT	#
# queue.c:35:     printf("%d\n", dequeue(&q));
	leaq	-32(%rbp), %rax	#, tmp103
	movq	%rax, %rdi	# tmp103,
	call	dequeue	#
# queue.c:35:     printf("%d\n", dequeue(&q));
	movl	%eax, %esi	# _3,
	leaq	.LC0(%rip), %rax	#, tmp104
	movq	%rax, %rdi	# tmp104,
	movl	$0, %eax	#,
	call	printf@PLT	#
# queue.c:36:     printf("%d\n", dequeue(&q));
	leaq	-32(%rbp), %rax	#, tmp105
	movq	%rax, %rdi	# tmp105,
	call	dequeue	#
# queue.c:36:     printf("%d\n", dequeue(&q));
	movl	%eax, %esi	# _4,
	leaq	.LC0(%rip), %rax	#, tmp106
	movq	%rax, %rdi	# tmp106,
	movl	$0, %eax	#,
	call	printf@PLT	#
# queue.c:37:     printf("%d\n", isEmpty(&q));
	leaq	-32(%rbp), %rax	#, tmp107
	movq	%rax, %rdi	# tmp107,
	call	isEmpty	#
# queue.c:37:     printf("%d\n", isEmpty(&q));
	movl	%eax, %esi	# _5,
	leaq	.LC0(%rip), %rax	#, tmp108
	movq	%rax, %rdi	# tmp108,
	movl	$0, %eax	#,
	call	printf@PLT	#
# queue.c:38:     freeQueue(&q);
	leaq	-32(%rbp), %rax	#, tmp109
	movq	%rax, %rdi	# tmp109,
	call	freeQueue	#
	movl	$0, %eax	#, _29
# queue.c:39: }
	movq	-8(%rbp), %rdx	# D.2661, tmp112
	subq	%fs:40, %rdx	# MEM[(<address-space-1> long unsigned int *)40B], tmp112
	je	.L3	#,
	call	__stack_chk_fail@PLT	#
.L3:
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE0:
	.size	main, .-main
	.globl	initQueue
	.type	initQueue, @function
initQueue:
.LFB1:
	.cfi_startproc
	endbr64	
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)	# q, q
# queue.c:42:     q->front = NULL;
	movq	-8(%rbp), %rax	# q, tmp82
	movq	$0, (%rax)	#, q_2(D)->front
# queue.c:43:     q->rear = NULL;
	movq	-8(%rbp), %rax	# q, tmp83
	movq	$0, 8(%rax)	#, q_2(D)->rear
# queue.c:44: }
	nop	
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE1:
	.size	initQueue, .-initQueue
	.globl	enqueue
	.type	enqueue, @function
enqueue:
.LFB2:
	.cfi_startproc
	endbr64	
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$32, %rsp	#,
	movq	%rdi, -24(%rbp)	# q, q
	movl	%esi, -28(%rbp)	# value, value
# queue.c:47:     Node *node = malloc(sizeof(Node));
	movl	$16, %edi	#,
	call	malloc@PLT	#
	movq	%rax, -8(%rbp)	# tmp85, node
# queue.c:48:     node->data = value;
	movq	-8(%rbp), %rax	# node, tmp86
	movl	-28(%rbp), %edx	# value, tmp87
	movl	%edx, (%rax)	# tmp87, node_7->data
# queue.c:49:     node->next = NULL;
	movq	-8(%rbp), %rax	# node, tmp88
	movq	$0, 8(%rax)	#, node_7->next
# queue.c:50:     if (q->front == NULL && q->rear == NULL) {
	movq	-24(%rbp), %rax	# q, tmp89
	movq	(%rax), %rax	# q_11(D)->front, _1
# queue.c:50:     if (q->front == NULL && q->rear == NULL) {
	testq	%rax, %rax	# _1
	jne	.L6	#,
# queue.c:50:     if (q->front == NULL && q->rear == NULL) {
	movq	-24(%rbp), %rax	# q, tmp90
	movq	8(%rax), %rax	# q_11(D)->rear, _2
# queue.c:50:     if (q->front == NULL && q->rear == NULL) {
	testq	%rax, %rax	# _2
	jne	.L6	#,
# queue.c:51:         q->front = node;
	movq	-24(%rbp), %rax	# q, tmp91
	movq	-8(%rbp), %rdx	# node, tmp92
	movq	%rdx, (%rax)	# tmp92, q_11(D)->front
# queue.c:52:         q->rear = node;
	movq	-24(%rbp), %rax	# q, tmp93
	movq	-8(%rbp), %rdx	# node, tmp94
	movq	%rdx, 8(%rax)	# tmp94, q_11(D)->rear
	jmp	.L7	#
.L6:
# queue.c:54:         q->rear->next = node;
	movq	-24(%rbp), %rax	# q, tmp95
	movq	8(%rax), %rax	# q_11(D)->rear, _3
# queue.c:54:         q->rear->next = node;
	movq	-8(%rbp), %rdx	# node, tmp96
	movq	%rdx, 8(%rax)	# tmp96, _3->next
# queue.c:55:         q->rear = node;
	movq	-24(%rbp), %rax	# q, tmp97
	movq	-8(%rbp), %rdx	# node, tmp98
	movq	%rdx, 8(%rax)	# tmp98, q_11(D)->rear
# queue.c:57: }
	nop	
.L7:
	nop	
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE2:
	.size	enqueue, .-enqueue
	.section	.rodata
	.align 8
.LC1:
	.string	"Canno perform dequeue on an empty queue"
	.text
	.globl	dequeue
	.type	dequeue, @function
dequeue:
.LFB3:
	.cfi_startproc
	endbr64	
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$32, %rsp	#,
	movq	%rdi, -24(%rbp)	# q, q
# queue.c:60:     if (q->front == NULL) {
	movq	-24(%rbp), %rax	# q, tmp90
	movq	(%rax), %rax	# q_11(D)->front, _1
# queue.c:60:     if (q->front == NULL) {
	testq	%rax, %rax	# _1
	jne	.L9	#,
# queue.c:61:         fprintf(stderr, "Canno perform dequeue on an empty queue");
	movq	stderr(%rip), %rax	# stderr, stderr.0_2
	movq	%rax, %rcx	# stderr.0_2,
	movl	$39, %edx	#,
	movl	$1, %esi	#,
	leaq	.LC1(%rip), %rax	#, tmp91
	movq	%rax, %rdi	# tmp91,
	call	fwrite@PLT	#
# queue.c:62:         return -1;
	movl	$-1, %eax	#, _7
	jmp	.L10	#
.L9:
# queue.c:64:     int value = q->front->data;
	movq	-24(%rbp), %rax	# q, tmp92
	movq	(%rax), %rax	# q_11(D)->front, _3
# queue.c:64:     int value = q->front->data;
	movl	(%rax), %eax	# _3->data, tmp93
	movl	%eax, -12(%rbp)	# tmp93, value
# queue.c:65:     Node *next = q->front->next;
	movq	-24(%rbp), %rax	# q, tmp94
	movq	(%rax), %rax	# q_11(D)->front, _4
# queue.c:65:     Node *next = q->front->next;
	movq	8(%rax), %rax	# _4->next, tmp95
	movq	%rax, -8(%rbp)	# tmp95, next
# queue.c:66:     free(q->front);
	movq	-24(%rbp), %rax	# q, tmp96
	movq	(%rax), %rax	# q_11(D)->front, _5
# queue.c:66:     free(q->front);
	movq	%rax, %rdi	# _5,
	call	free@PLT	#
# queue.c:67:     q->front = next;
	movq	-24(%rbp), %rax	# q, tmp97
	movq	-8(%rbp), %rdx	# next, tmp98
	movq	%rdx, (%rax)	# tmp98, q_11(D)->front
# queue.c:68:     if (q->front == NULL) q->rear = NULL;
	movq	-24(%rbp), %rax	# q, tmp99
	movq	(%rax), %rax	# q_11(D)->front, _6
# queue.c:68:     if (q->front == NULL) q->rear = NULL;
	testq	%rax, %rax	# _6
	jne	.L11	#,
# queue.c:68:     if (q->front == NULL) q->rear = NULL;
	movq	-24(%rbp), %rax	# q, tmp100
	movq	$0, 8(%rax)	#, q_11(D)->rear
.L11:
# queue.c:69:     return value;
	movl	-12(%rbp), %eax	# value, _7
.L10:
# queue.c:70: }
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE3:
	.size	dequeue, .-dequeue
	.globl	isEmpty
	.type	isEmpty, @function
isEmpty:
.LFB4:
	.cfi_startproc
	endbr64	
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	movq	%rdi, -24(%rbp)	# q, q
# queue.c:73:     int status = 0;
	movl	$0, -4(%rbp)	#, status
# queue.c:74:     if (q->front == NULL && q->rear == NULL)  status = 1;
	movq	-24(%rbp), %rax	# q, tmp86
	movq	(%rax), %rax	# q_6(D)->front, _1
# queue.c:74:     if (q->front == NULL && q->rear == NULL)  status = 1;
	testq	%rax, %rax	# _1
	jne	.L13	#,
# queue.c:74:     if (q->front == NULL && q->rear == NULL)  status = 1;
	movq	-24(%rbp), %rax	# q, tmp87
	movq	8(%rax), %rax	# q_6(D)->rear, _2
# queue.c:74:     if (q->front == NULL && q->rear == NULL)  status = 1;
	testq	%rax, %rax	# _2
	jne	.L13	#,
# queue.c:74:     if (q->front == NULL && q->rear == NULL)  status = 1;
	movl	$1, -4(%rbp)	#, status
.L13:
# queue.c:75:     return status;
	movl	-4(%rbp), %eax	# status, _8
# queue.c:76: }
	popq	%rbp	#
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE4:
	.size	isEmpty, .-isEmpty
	.section	.rodata
.LC2:
	.string	"Cannot print an empty queue"
.LC3:
	.string	"[ %d ] -> "
.LC4:
	.string	"[ %d ]"
	.text
	.globl	printQueue
	.type	printQueue, @function
printQueue:
.LFB5:
	.cfi_startproc
	endbr64	
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$32, %rsp	#,
	movq	%rdi, -24(%rbp)	# q, q
# queue.c:79:     if (q->front == NULL && q->rear == NULL) {
	movq	-24(%rbp), %rax	# q, tmp89
	movq	(%rax), %rax	# q_12(D)->front, _1
# queue.c:79:     if (q->front == NULL && q->rear == NULL) {
	testq	%rax, %rax	# _1
	jne	.L16	#,
# queue.c:79:     if (q->front == NULL && q->rear == NULL) {
	movq	-24(%rbp), %rax	# q, tmp90
	movq	8(%rax), %rax	# q_12(D)->rear, _2
# queue.c:79:     if (q->front == NULL && q->rear == NULL) {
	testq	%rax, %rax	# _2
	jne	.L16	#,
# queue.c:80:         fprintf(stderr, "Cannot print an empty queue");
	movq	stderr(%rip), %rax	# stderr, stderr.1_3
	movq	%rax, %rcx	# stderr.1_3,
	movl	$27, %edx	#,
	movl	$1, %esi	#,
	leaq	.LC2(%rip), %rax	#, tmp91
	movq	%rax, %rdi	# tmp91,
	call	fwrite@PLT	#
# queue.c:81:         return;
	jmp	.L15	#
.L16:
# queue.c:83:     Node *current = q->front;
	movq	-24(%rbp), %rax	# q, tmp92
	movq	(%rax), %rax	# q_12(D)->front, tmp93
	movq	%rax, -16(%rbp)	# tmp93, current
# queue.c:84:     while (current->next != NULL) {
	jmp	.L18	#
.L19:
# queue.c:85:         Node *next = current->next;
	movq	-16(%rbp), %rax	# current, tmp94
	movq	8(%rax), %rax	# current_8->next, tmp95
	movq	%rax, -8(%rbp)	# tmp95, next
# queue.c:86:         printf("[ %d ] -> ", current->data);
	movq	-16(%rbp), %rax	# current, tmp96
	movl	(%rax), %eax	# current_8->data, _4
	movl	%eax, %esi	# _4,
	leaq	.LC3(%rip), %rax	#, tmp97
	movq	%rax, %rdi	# tmp97,
	movl	$0, %eax	#,
	call	printf@PLT	#
# queue.c:87:         current = next;
	movq	-8(%rbp), %rax	# next, tmp98
	movq	%rax, -16(%rbp)	# tmp98, current
.L18:
# queue.c:84:     while (current->next != NULL) {
	movq	-16(%rbp), %rax	# current, tmp99
	movq	8(%rax), %rax	# current_8->next, _5
# queue.c:84:     while (current->next != NULL) {
	testq	%rax, %rax	# _5
	jne	.L19	#,
# queue.c:89:     printf("[ %d ]", q->rear->data);
	movq	-24(%rbp), %rax	# q, tmp100
	movq	8(%rax), %rax	# q_12(D)->rear, _6
# queue.c:89:     printf("[ %d ]", q->rear->data);
	movl	(%rax), %eax	# _6->data, _7
	movl	%eax, %esi	# _7,
	leaq	.LC4(%rip), %rax	#, tmp101
	movq	%rax, %rdi	# tmp101,
	movl	$0, %eax	#,
	call	printf@PLT	#
# queue.c:90:     printf("\n");
	movl	$10, %edi	#,
	call	putchar@PLT	#
.L15:
# queue.c:91: }
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE5:
	.size	printQueue, .-printQueue
	.globl	freeQueue
	.type	freeQueue, @function
freeQueue:
.LFB6:
	.cfi_startproc
	endbr64	
	pushq	%rbp	#
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp	#,
	.cfi_def_cfa_register 6
	subq	$32, %rsp	#,
	movq	%rdi, -24(%rbp)	# q, q
# queue.c:94:     Node *current = q->front;
	movq	-24(%rbp), %rax	# q, tmp82
	movq	(%rax), %rax	# q_4(D)->front, tmp83
	movq	%rax, -16(%rbp)	# tmp83, current
# queue.c:95:     while (current != NULL) {
	jmp	.L21	#
.L22:
# queue.c:96:         Node *next = current->next;
	movq	-16(%rbp), %rax	# current, tmp84
	movq	8(%rax), %rax	# current_1->next, tmp85
	movq	%rax, -8(%rbp)	# tmp85, next
# queue.c:97:         free(current);
	movq	-16(%rbp), %rax	# current, tmp86
	movq	%rax, %rdi	# tmp86,
	call	free@PLT	#
# queue.c:98:         current = next;
	movq	-8(%rbp), %rax	# next, tmp87
	movq	%rax, -16(%rbp)	# tmp87, current
.L21:
# queue.c:95:     while (current != NULL) {
	cmpq	$0, -16(%rbp)	#, current
	jne	.L22	#,
# queue.c:100: }
	nop	
	nop	
	leave	
	.cfi_def_cfa 7, 8
	ret	
	.cfi_endproc
.LFE6:
	.size	freeQueue, .-freeQueue
	.ident	"GCC: (Ubuntu 13.3.0-6ubuntu2~24.04.1) 13.3.0"
	.section	.note.GNU-stack,"",@progbits
	.section	.note.gnu.property,"a"
	.align 8
	.long	1f - 0f
	.long	4f - 1f
	.long	5
0:
	.string	"GNU"
1:
	.align 8
	.long	0xc0000002
	.long	3f - 2f
2:
	.long	0x3
3:
	.align 8
4:
