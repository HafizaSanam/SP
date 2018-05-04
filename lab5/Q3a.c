#include <stdio.h>
#include <unistd.h>
int main(){

	int cpid = fork();
	if(cpid == -1){
		printf("Fork Fail");
	}
	else if(cpid == 0)
	{
		printf("Child PID is: %d\n", (long)getpid());
		printf("Child PPID is: %d\n", (long)getppid());
	}
	else
	{
		printf("Parent PID is: %d\n", (long)getpid());
		printf("Parent PPID is: %d\n", (long)getppid());
	}
	
	return 0;
}

