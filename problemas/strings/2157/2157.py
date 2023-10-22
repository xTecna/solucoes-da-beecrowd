C = int(input())
for _ in range(C):
    B, E = [int(x) for x in input().strip().split(' ')]

    resposta = ''
    for i in range(B, E + 1):
        resposta += str(i)
    
    resposta += resposta[::-1]
    print(resposta)