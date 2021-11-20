pos_final = []

def comp(a, b):
    return pos_final[a] - pos_final[b]

def insertionSort(V):
    inversoes = 0

    for i in range(1, len(V)):
        j = i
        k = j - 1

        while(k > -1 and comp(V[j], V[k]) < 0):
            V[j], V[k] = V[k], V[j]
            inversoes += 1
            j -= 1
            k -= 1
    
    return inversoes

while True:
    try:
        N = int(input())
        comeco = [int(x) for x in input().strip().split(' ')]
        final = [int(x) for x in input().strip().split(' ')]

        pos_final = [0 for _ in range(N + 1)]
        for i, carro in enumerate(final):
            pos_final[carro] = i
        
        print(insertionSort(comeco))
    except EOFError:
        break
