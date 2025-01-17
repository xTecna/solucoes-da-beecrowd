import re

n = int(input())
for _ in range(n):
    hamekame = input().strip()
    sequencias = re.findall('a+', hamekame)
    tamanho1 = len(sequencias[0])
    tamanho2 = len(sequencias[1])
    grito = 'a' * (tamanho1 * tamanho2)
    print(f'k{grito}')