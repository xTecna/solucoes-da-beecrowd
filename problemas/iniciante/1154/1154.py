soma, contador = 0, 0

while True:
    try:
        idade = int(input())

        if(idade < 0):
            break

        soma += idade
        contador += 1
    except EOFError:
        break

print(f'{soma/contador:.2f}')
