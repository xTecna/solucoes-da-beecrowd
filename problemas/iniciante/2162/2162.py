from operator import truediv


N = int(input())
paisagem = [int(x) for x in input().strip().split(' ')]

pico, vale, mesmoPadrao = False, False, True
for i in range(1, N):
    if(paisagem[i] > paisagem[i - 1] and not pico):
        pico = True
        vale = False
    elif(paisagem[i] < paisagem[i - 1] and not vale):
        pico = False
        vale = True
    else:
        mesmoPadrao = False
        break

print('1' if mesmoPadrao else '0')
