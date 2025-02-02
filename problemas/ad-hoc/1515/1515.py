while True:
    try:
        n = int(input())
        if n == 0:
            break

        resposta = ''
        menor_ano = 9999
        for _ in range(n):
            planeta, ano, tempo = input().strip().split(' ')
            ano = int(ano) - int(tempo)

            if ano < menor_ano:
                resposta = planeta
                menor_ano = ano

        print(resposta)
    except EOFError:
        break