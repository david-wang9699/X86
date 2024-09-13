#include <stdio.h>

int very_fast_function(int i);

int main(int argc, char *argv[]) {
    int i;
    i = 10;
    printf("The function value of i is %d\n", very_fast_function(i));
    return 0;
}

int very_fast_function(int i) {
    int result;
    asm(
        "movl %1, %%eax\n\t"           // Move input value of i into %eax
        "imul $64, %%eax\n\t"          // Multiply %eax (i) by 64
        "addl $1, %%eax\n\t"           // Add 1 to %eax
        "cmp $1024, %%eax\n\t"         // Compare the result with 1024
        "jg if\n\t"                    // If result > 1024, go to if block
        "movl $0, %0\n\t"              // Else, set the return to 0
        "jmp end\n\t"                
        "if:\n\t"                       
        "incl %0\n\t"                  // If block, increment i and set it to the return value
        "end:\n\t"                    
        : "=r" (result)                
        : "r" (i)                       
        : "%rax"                        
    );
    return result;
}
