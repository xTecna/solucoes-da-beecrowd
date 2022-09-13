def notaFinal(notas, dificuldade):
    notas.sort()
    return sum(notas[1:-1]) * dificuldade


N = int(input())
for _ in range(N):
    nome = input()
    dificuldade = float(input())
    notas = [float(x) for x in input().strip().split(' ')]

    print(f'{nome} {notaFinal(notas, dificuldade):.2f}')
