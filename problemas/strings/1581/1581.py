N = int(input())

for _ in range(N):
    K = int(input())

    idioma = input()
    mesmoIdioma = True
    for i in range(1, K):
        S = input()
        
        if(S != idioma):
            mesmoIdioma = False
    
    print("ingles" if not mesmoIdioma else idioma)
