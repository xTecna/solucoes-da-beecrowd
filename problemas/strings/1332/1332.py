um = "one"

palavras = int(input())

for _ in range(palavras):
    palavra = input()

    if(len(palavra) == 5):
        print(3)
    else:
        semelhancas = sum([1 if palavra[i] == um[i] else 0 for i in range(3)])
        if(semelhancas > 1):
            print(1)
        else:
            print(2)
