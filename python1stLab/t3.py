num = raw_input("Enter Comma numbers")
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

tup = tuple(list1)

print list1
print tup
