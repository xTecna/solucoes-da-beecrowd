N = int(input())

for _ in range(N):
    linha = input()

    digito1 = int(linha[0])
    digito2 = int(linha[2])

    if(digito1 == digito2):
        print(digito1 * digito2)
    elif(linha[1].isupper()):
        print(digito2 - digito1)
    else:
        print(digito1 + digito2)
