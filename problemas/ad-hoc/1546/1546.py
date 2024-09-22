nomes = ['Rolien', 'Naej', 'Elehcim', 'Odranoel']

N = int(input())

for _ in range(N):
    K = int(input())

    for _ in range(K):
        feedback = int(input())

        print(nomes[feedback - 1])