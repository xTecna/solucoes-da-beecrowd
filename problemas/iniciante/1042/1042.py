V = [int(x) for x in input().strip().split(' ')]
v = V[:]

v.sort()

for i in range(3):
    print(v[i])
print()
for i in range(3):
    print(V[i])
