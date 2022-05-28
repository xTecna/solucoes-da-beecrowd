T = [[-1 for _ in range(1001)] for _ in range(101)]

for i in range(2):
    T[i] = [0 for _ in range(1001)]


def sobrevivente(n, k):
    if(T[n][k] == -1):
        T[n][k] = (sobrevivente(n - 1, k) + k) % n
    return T[n][k]


while True:
    try:
        N = int(input())

        if(N == 0):
            break

        m = 1
        while((sobrevivente(N - 1, m) + 1) % N != 12):
            m += 1

        print(m)
    except EOFError:
        break
