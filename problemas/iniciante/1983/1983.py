n = int(input())

aluno = ''
maior = 0.0
for _ in range(n):
    m, nota = input().strip().split(' ')
    nota = float(nota)

    if(nota > maior):
        maior = nota
        aluno = m

if(maior < 8.0):
    print('Minimum note not reached')
else:
    print(aluno)
