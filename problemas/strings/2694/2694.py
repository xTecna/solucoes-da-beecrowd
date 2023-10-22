N = int(input())

for _ in range(N):
    linha = input()

    parcelas = [int(linha[2:4]), int(linha[5:8]), int(linha[11:13])]
    resposta = sum(parcelas)

    print(resposta)