#include <stdio.h>
#include <unistd.h>
int main(){

	int status = 0;
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
		wait(&status);
		printf("Status Retured by WEXITSTATUS : %d", WEXITSTATUS(status));
	}
	
	return 0;
}

