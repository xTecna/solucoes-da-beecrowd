while True:
    try:
        N = int(input())

        livros = []
        for _ in range(N):
            livros.append(input())
        
        livros.sort()

        for i in range(N):
            print(livros[i])
    except EOFError:
        break
