l1 = [1,2,3,4,5,2,3]
l2 = [2,3,4,1,3,7]
l = []
for i in l1:
    if i%2 != 0:
        l.append(i)
for i in l2:
    if i%2 == 0:
        l.append(i)
print(l)

