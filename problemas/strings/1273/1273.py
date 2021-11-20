first = True
while True:
    try:
        N = int(input())

        if(N == 0):
            break

        if(first):
            first = False
        else:
            print('')
        
        maior = 0
        linhas = []
        for _ in range(N):
            frase = input()
            maior = len(frase) if maior < len(frase) else maior
            linhas.append(frase)
        
        for frase in linhas:
            print(f"{(maior - len(frase)) * ' '}{frase}")
    except EOFError:
        break
