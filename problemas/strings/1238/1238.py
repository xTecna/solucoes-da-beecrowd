N = int(input())

for _ in range(N):
    A, B = input().strip().split(' ')
    
    tam = min(len(A), len(B))
    resposta = ''.join([A[i] + B[i] for i in range(tam)])
    resposta = resposta + (A[tam:] if tam < len(A) else B[tam:])

    print(resposta)
