diasAteMes = [0, 31, 60, 91, 121, 152, 182, 213, 244, 274, 305, 335]


def diasAteData(mes, dia):
    return diasAteMes[mes - 1] + dia


while True:
    try:
        mes, dia = [int(x) for x in input().strip().split(' ')]

        diasAteNatal = diasAteData(12, 25) - diasAteData(mes, dia)

        if (diasAteNatal < 0):
            print("Ja passou!")
        elif (diasAteNatal == 0):
            print("E natal!")
        elif (diasAteNatal == 1):
            print("E vespera de natal!")
        else:
            print(f'Faltam {diasAteNatal} dias para o natal!')
    except EOFError:
        break
