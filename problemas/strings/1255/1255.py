N = int(input())

for _ in range(N):
    frase = input().strip().lower()

    frequencias = {}
    for letra in frase:
        if(letra.isalpha()):
            if(not letra in frequencias):
                frequencias[letra] = 0
            frequencias[letra] += 1
    
    maior = 0
    for letra in frequencias:
        maior = frequencias[letra] if frequencias[letra] > maior else maior
    
    resposta = []
    for letra in frequencias:
        if(frequencias[letra] == maior):
            resposta.append(letra)
    
    resposta.sort()
    print(''.join(resposta))

