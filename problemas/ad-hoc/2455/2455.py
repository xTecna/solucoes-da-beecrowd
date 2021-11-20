P1, C1, P2, C2 = [int(x) for x in input().strip().split(' ')]

diferenca = P2 * C2 - P1 * C1

if(diferenca < 0):
    print(-1)
elif(diferenca > 0):
    print(1)
else:
    print(0)
