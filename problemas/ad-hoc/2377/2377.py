L, D = [int(x) for x in input().strip().split(' ')]
K, P = [int(x) for x in input().strip().split(' ')]

print(L * K + P * (L//D))
