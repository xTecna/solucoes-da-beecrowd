T = int(input())

for _ in range(T):
    N = int(input())

    posicao = 0
    instrucoes = [0 for i in range(N + 1)]
    for i in range(1, N + 1):
        instrucao = input().strip()

        if(instrucao == "LEFT"):
            instrucoes[i] = -1
        elif(instrucao == "RIGHT"):
            instrucoes[i] = 1
        else:
            instrucao = int(instrucao.split(' ')[2])
            instrucoes[i] = instrucoes[instrucao]
        
        posicao += instrucoes[i]
    
    print(posicao)
