salario = float(input())
reajuste = 0

if(salario <= 400.00):
    reajuste = 15
elif(salario <= 800.00):
    reajuste = 12
elif(salario <= 1200.00):
    reajuste = 10
elif(salario <= 2000.00):
    reajuste = 7
else:
    reajuste = 4

print(f'Novo salario: {salario * (1 + reajuste/100):.2f}')
print(f'Reajuste ganho: {salario * reajuste/100:.2f}')
print(f'Em percentual: {reajuste} %')
