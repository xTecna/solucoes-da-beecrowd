operacoes = { '+': lambda a, b: a + b, '-': lambda a, b: a - b, 'x': lambda a, b: a * b }

C = int(input())

for _ in range(C):
    equacao = input().strip().split(' ')
    primeiro_numero = int(equacao[0])
    operador = equacao[1]
    segundo_numero = int(equacao[2])
    resultado_input = int(equacao[4])

    resultado_real = operacoes[operador](primeiro_numero, segundo_numero)

    if(resultado_input != resultado_real):
        numero_Rs = resultado_input - resultado_real if (resultado_input > resultado_real) else resultado_real - resultado_input
        Rs = 'r'*numero_Rs
        print(f'E{Rs}ou!')
