while True:
    try:
        N = int(input())

        for _ in range(N):
            pontos = input().strip().split(' ')
            print(chr(ord('a') + 3 * (len(pontos) - 1) + len(pontos[0]) - 1))
    except EOFError:
        break
