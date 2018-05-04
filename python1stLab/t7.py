str1 = raw_input("Enter sentence: ")
list1 = []
alphacount = 0
digitcount = 0
for i in range(0 , len(str1)):
	if (str1[i] >= 'A' and str1[i] <= 'Z') or (str1[i] >= 'a' and str1[i] <= 'z'):
		alphacount += 1
	elif str1[i] >= '0' and str1[i] <= '9':
		digitcount += 1

print 'letters: ' , alphacount
print 'digits: ' , digitcount
	
	

