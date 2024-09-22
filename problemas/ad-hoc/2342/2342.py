N = int(input())
P, C, Q = input().strip().split(' ')
P, Q = int(P), int(Q)

if(C == '+'):
    if(P + Q <= N):
        print('OK')
    else:
        print('OVERFLOW')
else:
    if(P * Q <= N):
        print('OK')
    else:
        print('OVERFLOW')
