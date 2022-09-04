A, B, C = [int(x) for x in input().strip().split(' ')]

if(A == B or A == C or C == B or A + B == C or A + C == B or B + C == A):
    print('S')
else:
    print('N')