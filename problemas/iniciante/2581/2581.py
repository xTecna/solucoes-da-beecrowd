while True:
    try:
        N = int(input())

        for _ in range(N):
            frase = input()
            print('I am Toorg!')
    except EOFError:
        break
