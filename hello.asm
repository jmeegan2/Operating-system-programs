
hello.o:	file format elf64-x86-64

Disassembly of section .text:

0000000000000000 <main>:
       0: 55                           	pushq	%rbp
       1: 48 89 e5                     	movq	%rsp, %rbp
       4: 48 83 ec 70                  	subq	$112, %rsp
       8: 89 7d 9c                     	movl	%edi, -100(%rbp)
       b: 48 89 75 90                  	movq	%rsi, -112(%rbp)
       f: 64 48 8b 04 25 28 00 00 00   	movq	%fs:40, %rax
      18: 48 89 45 f8                  	movq	%rax, -8(%rbp)
      1c: 31 c0                        	xorl	%eax, %eax
      1e: c7 45 ac 00 00 00 00         	movl	$0, -84(%rbp)
      25: 48 c7 45 b0 00 00 00 00      	movq	$0, -80(%rbp)
      2d: 48 b8 54 68 69 73 20 69 73 20	movabsq	$2338328219631577172, %rax # imm = 0x2073692073696854
      37: 48 ba 61 20 73 74 72 69 6e 67	movabsq	$7453010373645639777, %rdx # imm = 0x676E697274732061
      41: 48 89 45 d0                  	movq	%rax, -48(%rbp)
      45: 48 89 55 d8                  	movq	%rdx, -40(%rbp)
      49: 48 c7 45 e0 00 00 00 00      	movq	$0, -32(%rbp)
      51: 48 c7 45 e8 00 00 00 00      	movq	$0, -24(%rbp)
      59: 48 c7 45 f0 00 00 00 00      	movq	$0, -16(%rbp)
      61: bf c8 00 00 00               	movl	$200, %edi
      66: e8 00 00 00 00               	callq	0x6b <main+0x6b>
      6b: 48 89 45 b8                  	movq	%rax, -72(%rbp)
      6f: bf c8 00 00 00               	movl	$200, %edi
      74: e8 00 00 00 00               	callq	0x79 <main+0x79>
      79: 48 89 45 c0                  	movq	%rax, -64(%rbp)
      7d: bf c8 00 00 00               	movl	$200, %edi
      82: e8 00 00 00 00               	callq	0x87 <main+0x87>
      87: 48 89 45 c8                  	movq	%rax, -56(%rbp)
      8b: c6 45 aa 58                  	movb	$88, -86(%rbp)
      8f: c6 45 ab 44                  	movb	$68, -85(%rbp)
      93: c7 45 ac 00 01 00 00         	movl	$256, -84(%rbp)         # imm = 0x100
      9a: 48 b8 ef cd ab 89 67 45 23 01	movabsq	$81985529216486895, %rax # imm = 0x123456789ABCDEF
      a4: 48 89 45 b0                  	movq	%rax, -80(%rbp)
      a8: 48 8b 45 c0                  	movq	-64(%rbp), %rax
      ac: c7 00 00 20 00 00            	movl	$8192, (%rax)           # imm = 0x2000
      b2: 48 8b 45 c8                  	movq	-56(%rbp), %rax
      b6: 48 b9 bb bb aa aa 99 99 88 88	movabsq	$-8608461802446341189, %rcx # imm = 0x88889999AAAABBBB
      c0: 48 89 08                     	movq	%rcx, (%rax)
      c3: 48 8d 3d 00 00 00 00         	leaq	(%rip), %rdi            # 0xca <main+0xca>
      ca: e8 00 00 00 00               	callq	0xcf <main+0xcf>
      cf: 48 8d 3d 00 00 00 00         	leaq	(%rip), %rdi            # 0xd6 <main+0xd6>
      d6: e8 00 00 00 00               	callq	0xdb <main+0xdb>
      db: 48 8b 45 b0                  	movq	-80(%rbp), %rax
      df: 48 89 c6                     	movq	%rax, %rsi
      e2: 48 8d 3d 00 00 00 00         	leaq	(%rip), %rdi            # 0xe9 <main+0xe9>
      e9: b8 00 00 00 00               	movl	$0, %eax
      ee: e8 00 00 00 00               	callq	0xf3 <main+0xf3>
      f3: 8b 45 ac                     	movl	-84(%rbp), %eax
      f6: 89 c6                        	movl	%eax, %esi
      f8: 48 8d 3d 00 00 00 00         	leaq	(%rip), %rdi            # 0xff <main+0xff>
      ff: b8 00 00 00 00               	movl	$0, %eax
     104: e8 00 00 00 00               	callq	0x109 <main+0x109>
     109: 8b 45 ac                     	movl	-84(%rbp), %eax
     10c: 89 c6                        	movl	%eax, %esi
     10e: 48 8d 3d 00 00 00 00         	leaq	(%rip), %rdi            # 0x115 <main+0x115>
     115: b8 00 00 00 00               	movl	$0, %eax
     11a: e8 00 00 00 00               	callq	0x11f <main+0x11f>
     11f: 8b 45 ac                     	movl	-84(%rbp), %eax
     122: 89 c6                        	movl	%eax, %esi
     124: 48 8d 3d 00 00 00 00         	leaq	(%rip), %rdi            # 0x12b <main+0x12b>
     12b: b8 00 00 00 00               	movl	$0, %eax
     130: e8 00 00 00 00               	callq	0x135 <main+0x135>
     135: 0f be 45 aa                  	movsbl	-86(%rbp), %eax
     139: 89 c6                        	movl	%eax, %esi
     13b: 48 8d 3d 00 00 00 00         	leaq	(%rip), %rdi            # 0x142 <main+0x142>
     142: b8 00 00 00 00               	movl	$0, %eax
     147: e8 00 00 00 00               	callq	0x14c <main+0x14c>
     14c: 48 8d 45 d0                  	leaq	-48(%rbp), %rax
     150: 48 89 c6                     	movq	%rax, %rsi
     153: 48 8d 3d 00 00 00 00         	leaq	(%rip), %rdi            # 0x15a <main+0x15a>
     15a: b8 00 00 00 00               	movl	$0, %eax
     15f: e8 00 00 00 00               	callq	0x164 <main+0x164>
     164: b8 00 00 00 00               	movl	$0, %eax
     169: 48 8b 55 f8                  	movq	-8(%rbp), %rdx
     16d: 64 48 33 14 25 28 00 00 00   	xorq	%fs:40, %rdx
     176: 74 05                        	je	0x17d <main+0x17d>
     178: e8 00 00 00 00               	callq	0x17d <main+0x17d>
     17d: c9                           	leave
     17e: c3                           	retq
