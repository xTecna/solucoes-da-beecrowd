F = [-1 for _ in range(40)]
CF = [-1 for _ in range(40)]

F[0] = 0
F[1] = 1

CF[0] = 1
CF[1] = 1

def calcula(n):
    if(F[n] == -1):
        result1, num_calls1 = calcula(n - 1)
        result2, num_calls2 = calcula(n - 2)
        F[n] = result1 + result2
        CF[n] = num_calls1 + num_calls2 + 1
    return (F[n], CF[n])

N = int(input())

for _ in range(N):
    X = int(input())
    result, num_calls = calcula(X)
    print(f'fib({X}) = {num_calls - 1} calls = {result}')
