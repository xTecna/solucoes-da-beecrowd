bits = input()
pares = sum([int(x) for x in bits])

print(f'{bits}{pares % 2}')
