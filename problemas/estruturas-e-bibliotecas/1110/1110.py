from collections import deque

while True:
    try:
        n = int(input())

        if(n == 0):
            break

        d = deque()
        for i in range(1, n + 1):
            d.append(i)

        discarded = []
        while(len(d) > 1):
            discarded.append(str(d[0]))

            d.popleft()
            d.append(d[0])
            d.popleft()

        print(f'Discarded cards: {", ".join(discarded)}')
        print(f'Remaining card: {d[0]}')
    except EOFError:
        break
