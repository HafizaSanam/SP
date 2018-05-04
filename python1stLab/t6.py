str1 = raw_input("Enter sentence: ")
list1 = []

set1 = {}
str2=' '
list1=str1.split(' ')

list1.sort()
set1 = set(list1)


for i in set1:
	
	str2 += i
	str2 += ' '

print str2

