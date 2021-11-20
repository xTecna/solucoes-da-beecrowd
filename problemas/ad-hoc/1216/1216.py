media, pessoas = 0, 0

while True:
    try:
        nome = input()
        distancia = int(input())

        media += distancia
        pessoas += 1
    except EOFError:
        break

resultado = media/pessoas

print(f"{resultado:.1f}")
