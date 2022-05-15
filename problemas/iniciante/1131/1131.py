inter, gremio, empate = 0, 0, 0

while True:
    try:
        pt_inter, pt_gremio = [int(x) for x in input().strip().split(' ')]

        if(pt_inter > pt_gremio):
            inter += 1
        elif(pt_inter == pt_gremio):
            empate += 1
        else:
            gremio += 1

        print('Novo grenal (1-sim 2-nao)')
        codigo = input()
        if(codigo != '1'):
            break
    except EOFError:
        break

print(f'{inter + gremio + empate} grenais')
print(f'Inter:{inter}')
print(f'Gremio:{gremio}')
print(f'Empates:{empate}')

if(inter > gremio):
    print('Inter venceu mais')
elif(inter == gremio):
    print('Nao houve vencedor')
else:
    print('Gremio venceu mais')
