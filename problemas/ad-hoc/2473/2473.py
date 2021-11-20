retorno = ["sena", "quina", "quadra", "terno", "azar", "azar", "azar"]

aposta = [int(x) for x in input().split(' ')]
resultado = [int(x) for x in input().split(' ')]

aposta = set(aposta)

for dezena in resultado:
    if dezena in aposta:
        aposta.remove(dezena)

print(retorno[len(aposta)])
