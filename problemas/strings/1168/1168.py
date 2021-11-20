leds = [6, 2, 5, 5, 4, 5, 6, 3, 7, 6]

N = int(input())

for _ in range(N):
    V = input().strip()

    resposta = 0
    for numero in V:
        resposta += leds[int(numero)]

    print(f"{resposta} leds")
