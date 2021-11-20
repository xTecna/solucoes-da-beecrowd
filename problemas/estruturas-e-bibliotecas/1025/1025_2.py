T = 1
while True:
    try:
        N, Q = [int(x) for x in input().strip().split(' ')]

        if(N == 0 and Q == 0):
            break

        marmores = [0 for _ in range(10000)]
        for _ in range(N):
            marmores[int(input())] += 1

        for i in range(1, 10000):
            marmores[i] += marmores[i - 1]

        print(f'CASE# {T}:')
        T += 1
        for _ in range(Q):
            x = int(input())

            if(marmores[x] == marmores[x - 1]):
                print(f'{x} not found')
            else:
                print(f'{x} found at {marmores[x - 1] + 1}')
    except EOFError:
        break
