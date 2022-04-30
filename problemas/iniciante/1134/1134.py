alcool, gasolina, diesel = 0, 0, 0

while True:
    try:
        codigo = int(input())

        if(codigo == 1):
            alcool += 1
        elif(codigo == 2):
            gasolina += 1
        elif(codigo == 3):
            diesel += 1
        elif(codigo == 4):
            break
    except EOFError:
        break

print('MUITO OBRIGADO')
print(f'Alcool: {alcool}')
print(f'Gasolina: {gasolina}')
print(f'Diesel: {diesel}')
