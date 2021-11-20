import math

N = int(input())

for _ in range(N):
    C = float(input())

    print(f'{math.ceil(math.log2(C))} dias')
