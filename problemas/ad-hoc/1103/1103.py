def converte(horas, minutos):
    return 60 * horas + minutos

while True:
    try:
        [H1, M1, H2, M2] = [int(x) for x in input().strip().split(' ')]

        if(not H1 and not M1 and not H2 and not M2):
            break

        if(H2 < H1 or (H2 == H1 and M2 < M1)):
            H2 += 24
        resposta = converte(H2, M2) - converte(H1, M1)

        print(resposta)
    except EOFError:
        break
