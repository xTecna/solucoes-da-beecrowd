codigo1, quantidade1, valor1 = input().split(' ')
quantidade1 = int(quantidade1)
valor1 = float(valor1)

codigo2, quantidade2, valor2 = input().split(' ')
quantidade2 = int(quantidade2)
valor2 = float(valor2)

total = quantidade1 * valor1 + quantidade2 * valor2

print(f"VALOR A PAGAR: R$ {total:.2f}")
