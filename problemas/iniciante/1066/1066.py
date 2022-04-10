impares, positivos, negativos = 0, 0, 0
for _ in range(5):
    numero = int(input())

    if(abs(numero) % 2):
        impares += 1
    if(numero > 0):
        positivos += 1
    elif(numero < 0):
        negativos += 1

print(f'{5 - impares} valor(es) par(es)')
print(f'{impares} valor(es) impar(es)')
print(f'{positivos} valor(es) positivo(s)')
print(f'{negativos} valor(es) negativo(s)')
