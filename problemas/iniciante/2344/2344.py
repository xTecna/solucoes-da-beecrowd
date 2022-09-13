def conceito(nota):
    if(nota > 85):
        return 'A'
    if(nota > 60):
        return 'B'
    if(nota > 35):
        return 'C'
    if(nota > 0):
        return 'D'
    return 'E'


N = int(input())
print(conceito(N))
