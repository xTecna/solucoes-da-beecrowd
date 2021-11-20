while True:
    try:
        A = int(input())

        print('N' if A % 6 else 'Y')
    except EOFError:
        break
