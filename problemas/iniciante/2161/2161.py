N = int(input())

resposta = 0.0
if(N == 0):
    resposta = 3.0
else:
    resposta = 6.0
    for _ in range(N - 1):
        resposta = 6.0 + 1.0 / resposta
    resposta = 3.0 + 1.0 / resposta

print(f'{resposta:.10f}')
