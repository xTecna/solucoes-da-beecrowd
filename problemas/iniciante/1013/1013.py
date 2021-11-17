def maior(a, b): return (a + b + abs(a - b))//2


a, b, c = [int(x) for x in input().split(' ')]

resposta = maior(a, maior(b, c))

print(f"{resposta} eh o maior")
