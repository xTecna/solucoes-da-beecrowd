def comp(a, b):
    return len(b) - len(a)


def insertionSort(V):
    for i in range(1, len(V)):
        j = i
        k = j - 1

        while(k > -1 and comp(V[j], V[k]) < 0):
            V[j], V[k] = V[k], V[j]
            j -= 1
            k -= 1


N = int(input())

for _ in range(N):
    palavras = input().strip().split(' ')

    insertionSort(palavras)

    print(' '.join(palavras))

