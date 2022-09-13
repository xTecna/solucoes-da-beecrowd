def ganhou(jogada1, jogada2):
    return (jogada1 == "pedra" and jogada2 == "tesoura") or (jogada1 == "tesoura" and jogada2 == "papel") or (jogada1 == "papel" and jogada2 == "pedra")


while True:
    try:
        dodo, leo, pepper = input().strip().split(' ')

        if (ganhou(dodo, leo) and ganhou(dodo, pepper)):
            print("Os atributos dos monstros vao ser inteligencia, sabedoria...")
        elif (ganhou(leo, dodo) and ganhou(leo, pepper)):
            print("Iron Maiden's gonna get you, no matter how far!")
        elif (ganhou(pepper, dodo) and ganhou(pepper, leo)):
            print("Urano perdeu algo muito precioso...")
        else:
            print("Putz vei, o Leo ta demorando muito pra jogar...")
    except EOFError:
        break
