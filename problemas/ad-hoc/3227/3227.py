X = int(input())
entrada = input()

qtd = [0, 0]
dif = 0
resposta = 0

while(len(entrada) > 0):
    genero = 1 if (entrada[0] == 'W') else 0

    if(qtd[genero] < qtd[1 - genero] or dif < X):
        if(qtd[genero] < qtd[1 - genero]):
            dif -= 1
        else:
            dif += 1
        resposta += 1
        qtd[genero] += 1
        entrada = entrada[1:]
        continue
    
    if(len(entrada) > 1):
        genero = 1 if (entrada[1] == 'W') else 0

        if(qtd[genero] < qtd[1 - genero] or dif < X):
            if(qtd[genero] < qtd[1 - genero]):
                dif -= 1
            else:
                dif += 1
            
            resposta += 1
            qtd[genero] += 1
            entrada = entrada[:1] + entrada[2:]
            continue
        else:
            break

print(resposta)
