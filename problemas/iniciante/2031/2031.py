regras = {
    "pedra": {
        "pedra": "Sem ganhador",
        "papel": "Jogador 1 venceu",
        "ataque": "Jogador 2 venceu"
    },
    "papel": {
        "pedra": "Jogador 2 venceu",
        "papel": "Ambos venceram",
        "ataque": "Jogador 2 venceu"
    },
    "ataque": {
        "pedra": "Jogador 1 venceu",
        "papel": "Jogador 1 venceu",
        "ataque": "Aniquilacao mutua"
    }
}

N = int(input())
for _ in range(N):
    jogada1 = input()
    jogada2 = input()

    print(regras[jogada1][jogada2])
