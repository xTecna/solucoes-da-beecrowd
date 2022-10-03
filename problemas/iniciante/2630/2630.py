def eye(r, g, b):
    return int(0.3 * r + 0.59 * g + 0.11 * b)


def mean(r, g, b):
    return int((r + g + b)//3)


while True:
    try:
        T = int(input())

        for i in range(1, T + 1):
            conversao = input()
            R, G, B = [int(x) for x in input().strip().split(' ')]

            print(f'Caso #{i}: ', end='')
            if(conversao == 'eye'):
                print(eye(R, G, B))
            elif(conversao == 'mean'):
                print(mean(R, G, B))
            elif(conversao == 'min'):
                print(min(R, G, B))
            elif(conversao == 'max'):
                print(max(R, G, B))
    except EOFError:
        break
