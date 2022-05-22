def converte(digito, um, cinco, dez):
    if(digito == 9):
        return um + dez
    elif(digito == 4):
        return um + cinco
    elif(digito > 4):
        return cinco + (digito - 5) * um
    else:
        return digito * um


N = int(input())

print(converte(N // 100, 'C', 'D', 'M'), end='')
N %= 100
print(converte(N // 10, 'X', 'L', 'C'), end='')
N %= 10
print(converte(N, 'I', 'V', 'X'))
