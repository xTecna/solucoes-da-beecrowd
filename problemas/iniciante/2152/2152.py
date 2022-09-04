T = int(input())
for _ in range(T):
    H, M, O = [int(x) for x in input().strip().split(' ')]

    verbo = 'abriu' if O else 'fechou'
    print(f'{H:02d}:{M:02d} - A porta {verbo}!')
