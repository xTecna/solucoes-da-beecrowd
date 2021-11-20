def vogal(letra):
    return letra in 'aeiou'


risada = input()

soVogal = ''.join(list(filter(vogal, risada)))
invertido = soVogal[::-1]

print('S' if soVogal == invertido else 'N')
