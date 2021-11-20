fatorial = [40320, 5040, 720, 120, 24, 6, 2, 1]

N = int(input())

resultado = 0
for f in fatorial:
    resultado += N//f
    N %= f

print(resultado)
