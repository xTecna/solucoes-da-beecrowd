N = int(input())

for _ in range(N):
    x, y = [int(x) for x in input().strip().split(' ')]

    print(f'{(x * y)//2} cm2')
