#include<stdlib.h>
#include<stdio.h>
#include <fcntl.h>
int main(int argc, char *argv[]){
	char buff[256];
	int fd = open(argv[1],O_RDONLY);
	int fd1 = open(argv[2],O_WRONLY);
	int move = open(argv[3],O_WRONLY);
	int n = read(fd , buff , 256);
	int fd2 = write(fd1 , buff , n);
	int mv = write(move , buff , n);
	remove(argv[1]);
	close(fd);
	close(fd1);
}


