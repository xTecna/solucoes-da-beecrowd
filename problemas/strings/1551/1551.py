N = int(input())

for _ in range(N):
    frase = input().strip()

    letras = set()

    for letra in frase:
        if(letra.isalpha()):
            letras.add(letra)
    
    if(len(letras) == 26):
        print("frase completa")
    elif(len(letras) > 12):
        print("frase quase completa")
    else:
        print("frase mal elaborada")
