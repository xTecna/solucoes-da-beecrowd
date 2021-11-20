def r(x, y):
    return (3 * x) * (3 * x) + y * y


def b(x, y):
    return 2 * x * x + (5 * y) * (5 * y)


def c(x, y):
    return -100 * x + y * y * y


N = int(input())

for _ in range(N):
    x, y = [int(x) for x in input().strip().split(' ')]

    rafael = r(x, y)
    beto = b(x, y)
    carlos = c(x, y)

    if(rafael > beto and rafael > carlos):
        print('Rafael ganhou')
    elif(beto > carlos):
        print('Beto ganhou')
    else:
        print('Carlos ganhou')
