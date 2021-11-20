N = int(input().strip())
A, L, P = [int(x) for x in input().strip().split(' ')]

print('S' if N <= A and N <= L and N <= P else 'N')
