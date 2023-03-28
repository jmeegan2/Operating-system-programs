#include <stdio.h>
#include <stdlib.h>
#include <unistd.h>
#include <sys/wait.h>

int main() {
    int i;

    for (i = 0; i < 4; i++) {
        pid_t pid = fork(); // Create a new child process

        if (pid < 0) { // If the fork failed, print an error message and exit
            perror("fork");
            exit(1);
        } else if (pid == 0) { // If this is the child process
            printf("Child process %d (PID %d) started\n", i+1, getpid());

            char *args[] = {"./hello", NULL}; // Arguments for the exec() function
            execv(args[0], args); // Load the "hello" program

            // The code after this point will only execute if the exec() function failed
            perror("execv");
            exit(1);
        }
    }

    // Wait for all child processes to terminate
    int status;
    pid_t wpid;
    while ((wpid = wait(&status)) > 0);

    printf("All child processes have terminated. Parent process (PID %d) exiting.\n", getpid());

    return 0;
}
