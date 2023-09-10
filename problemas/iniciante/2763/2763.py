import re

CPF = re.split('[\\.-]', input().strip())
for trecho in CPF:
    print(trecho)
