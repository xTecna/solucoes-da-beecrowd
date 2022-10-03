entrada = input().strip().split(' ')

jipes, pessoas = 0, 0
while(entrada[0] != "ABEND"):
    if(entrada[0] == "SALIDA"):
        pessoas += int(entrada[1])
        jipes += 1
    else:
        pessoas -= int(entrada[1])
        jipes -= 1

    entrada = input().strip().split(' ')

print(pessoas)
print(jipes)
