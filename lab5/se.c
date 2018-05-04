#include <stdio.h>
#include <unistd.h>
int main(){
	uid_t ruid, euid, suid;
	gid_t rgid, egid, sgid;
	getresuid(&ruid, &euid, &suid);
	printf("My Real user-ID is: %d\n", (long)ruid);
	printf("My Effective user-ID is: %d\n", (long)euid);
	printf("My Saved Set-user-ID is: %d\n\n\n", (long)suid);

	int rev = setresuid(1000, 2000, 2000);
	if (rev != -1){
		getresuid(&ruid, &euid, &suid);
		printf("\n\nAfter setuid(2000) the IDs are:\n");
		printf("My Real user-ID is: %d\n", (long)ruid);
		printf("My Effective user-ID is: %d\n", (long)euid);
		printf("My Saved Set-user-ID is: %d\n", (long)suid);
	}
	else
		printf("Error in setting Ids\n");
return 0;
}
