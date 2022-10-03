N = int(input())
A, B = [int(x) for x in input().strip().split(' ')]

if(A + B <= N):
    print('Farei hoje!')
else:
    print('Deixa para amanha!')
