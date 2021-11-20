caso = 0

while True:
    try:
        tamanho_desejado = int(input())
        sapatos = input().strip().split(' ')
        
        if(caso > 0):
            print("")

        feminino, masculino = 0, 0

        for i in range(0, len(sapatos), 2):
            tamanho, genero = int(sapatos[i]), sapatos[i + 1]

            if(tamanho == tamanho_desejado):
                if(genero == "F"):
                    feminino += 1
                else:
                    masculino += 1
        
        caso += 1
        print(f"Caso {caso}:")
        print(f"Pares Iguais: {feminino + masculino}")
        print(f"F: {feminino}")
        print(f"M: {masculino}")
    except EOFError:
        break
