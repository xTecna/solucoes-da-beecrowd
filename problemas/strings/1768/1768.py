def imprimeTriangulo(tamanho, deslocamento):
    espacos = tamanho // 2 + deslocamento
    asteriscos = 1

    while asteriscos <= tamanho:
        print(' ' * espacos + '*' * asteriscos)
        espacos -= 1
        asteriscos += 2

while True:
    try:
        n = int(input())

        imprimeTriangulo(n, 0)
        imprimeTriangulo(3, n // 2 - 1)
        print("")
    except EOFError:
        break