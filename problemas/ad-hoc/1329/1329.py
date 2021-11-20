while True:
    try:
        N = int(input())

        R = [int(x) for x in input().strip().split(' ')]

        joao = sum(R)
        maria = N - joao

        print(f"Mary won {maria} times and John won {joao} times")
    except EOFError:
        break
