nota1, nota2 = -1.0, -1.0
while(nota2 == -1.0):
    nota = float(input())

    if(0.0 <= nota <= 10.0):
        if(nota1 == -1.0):
            nota1 = nota
        else:
            nota2 = nota
    else:
        print('nota invalida')

print(f'media = {(nota1 + nota2) / 2:.2f}')
