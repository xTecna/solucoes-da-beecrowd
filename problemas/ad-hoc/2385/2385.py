N = int(input())
P, Q, R, S, X, Y = [int(x) for x in input().split()]
I, J = [int(x) for x in input().split()]

def A(i, j):
    return ((P * i + Q * j) % X)

def B(i, j):
    return ((R * i + S * j) % Y)

print(sum([A(I, k) * B(k, J) for k in range(1, N + 1)]))
