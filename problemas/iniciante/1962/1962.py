N = int(input().strip())
for _ in range(N):
    T = int(input().strip())

    T = 2015 - T

    if(T <= 0):
        print(f'{1 - T} A.C.')
    else:
        print(f'{T} D.C.')