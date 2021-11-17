dias = int(input())

anos = dias//365
dias %= 365
meses = dias//30
dias %= 30

print(f"{anos} ano(s)")
print(f"{meses} mes(es)")
print(f"{dias} dia(s)")
