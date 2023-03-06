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

#define BUFFER_SIZE 1024

int main(int argCount, char **argValue) 
{
    if (argCount < 3) {
        fprintf(stderr, "Usage: %s input_file output_file\n", argValue[0]);
        exit(1);
    }

    FILE *input_file = fopen(argValue[1], "read");
    if (input_file == NULL) {
        perror("Failed to read input_file");
        exit(1);
    }

    FILE *output_file = fopen(argValue[2], "write");
    if (output_file == NULL) {
        perror("Failed to write to output_file");
        exit(1);
    }

    char buffer[BUFFER_SIZE];
    size_t bytes_read;
    while ((bytes_read = fread(buffer, 1, BUFFER_SIZE, input_file)) > 0) {
        fwrite(buffer, 1, bytes_read, output_file);
    }

    fclose(input_file);
    fclose(output_file);

    return 0;
}