regras = {
    "tesoura": {
        "tesoura": 0,
        "papel": 1,
        "pedra": -1,
        "lagarto": 1,
        "Spock": -1,
    },
    "papel": {
        "tesoura": -1,
        "papel": 0,
        "pedra": 1,
        "lagarto": -1,
        "Spock": 1,
    },
    "pedra": {
        "tesoura": 1,
        "papel": -1,
        "pedra": 0,
        "lagarto": 1,
        "Spock": -1
    },
    "lagarto": {
        "tesoura": -1,
        "papel": 1,
        "pedra": -1,
        "lagarto": 0,
        "Spock": 1,
    },
    "Spock": {
        "tesoura": 1,
        "papel": -1,
        "pedra": 1,
        "lagarto": -1,
        "Spock": 0
    }
}

T = int(input())
for i in range(1, T + 1):
    sheldon, raj = input().strip().split(' ')

    print(f'Caso #{i}: ', end='')

    if(regras[sheldon][raj] == -1):
        print('Raj trapaceou!')
    elif(regras[sheldon][raj] == 0):
        print('De novo!')
    elif(regras[sheldon][raj] == 1):
        print('Bazinga!')
