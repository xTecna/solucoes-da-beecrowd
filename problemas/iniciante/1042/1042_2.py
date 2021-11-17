A, B, C = [int(x) for x in input().strip().split(' ')]
a, b, c = A, B, C

if(b < a):
    a, b = b, a
if(c < b):
    b, c = c, b
    if(b < a):
        a, b = b, a

print(a)
print(b)
print(c)
print()
print(A)
print(B)
print(C)
