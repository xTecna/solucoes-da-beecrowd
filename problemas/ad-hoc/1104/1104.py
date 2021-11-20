while True:
    try:
        A, B = [int(x) for x in input().strip().split(' ')]

        alice = set([int(x) for x in input().strip().split(' ')])
        beatriz = set([int(x) for x in input().strip().split(' ')])

        uniao = alice.union(beatriz)

        print(min(len(uniao) - len(beatriz), len(uniao) - len(alice)))
    except EOFError:
        break
