num = raw_input("Enter Comma seprated words: ")
list1 = []
tup = ()
str1 = ''
for i in range(0 , len(num)):
	if num[i] == ',':
		list1.append(str1)
		str1 = ''
	else:
		str1 += num[i]
list1.append(str1)	

list1.sort()
'''for i in list1:
	print i'''

print list1
#print tup
