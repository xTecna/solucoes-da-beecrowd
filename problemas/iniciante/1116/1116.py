N = int(input())
for _ in range(N):
    X, Y = [int(x) for x in input().strip().split(' ')]

    if(Y == 0):
        print('divisao impossivel')
    else:
        print(f'{X/Y:.1f}')
