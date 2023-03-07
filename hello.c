//This is first program 
//OS
//Dr. Karne 
//hello.c 
// #include <stdio.h>
// #include <stdlib.h>

// int main (int argc, char **argv) 
// {
//    char c1; 
//    unsigned char c2; 
//    int i1=0; 
//    long l2=0;
//    char *cptr; 
//    int *iptr; 
//    long *lptr; 
//    char array1[40] = "This is a string";

//    cptr = (char *)malloc(200); 
//    iptr = (int *)malloc(200); 
//    lptr = (long *)malloc(200); 

//    c1 = 'X'; 
//    c2 = 0x44; 
//    i1 = 0x100; 
//    l2 = 0x0123456789abcdef; 

//    *iptr = 0x2000; 
//    *lptr = 0x88889999aaaabbbb; 

//    printf("Hello World\n"); 
//    printf("\n\n"); 
//    printf("l2: %lx \n", l2); 
//    printf("i1: %x \n", i1); 
//    printf("i1: %10x \n", i1); 
//    printf("i1: %4x \n", i1); 
//    printf("c1: %c \n", c1); 
//    printf("string: %s \n", array1); 


//    return 0; 
// }
#include <stdio.h>
#include <stdlib.h>

int main(int argc, char **argv) 

{
    //the three args will be program name, input file, and output file 
    if(argc == 3) {
    //Opening input file and output file
    FILE *input_f= fopen(argv[1], "read");
    FILE *output_f = fopen(argv[2], "write");

    //while byte is not at end of file (EOF) in input file keep writing to output file
    int curr_byte;
    while (
        (curr_byte = fgetc(input_f)) != EOF) {
        fputc(curr_byte, output_f);
    }

    fclose(input_f);
    fclose(output_f);
    }
    else
    {
        perror("3 arguments must be passed in");
        exit(1);
    }
    return 0;
}