C = int(input())

for _ in range(C):
    alunos = [int(x) for x in input().strip().split(' ')[1:]]

    media = 0.0
    for aluno in alunos:
        media += aluno

    media /= len(alunos)
    resposta = 0
    for aluno in alunos:
        if(aluno > media):
            resposta += 1

    resposta = resposta/len(alunos) * 100
    print(f'{resposta:.3f}%')
