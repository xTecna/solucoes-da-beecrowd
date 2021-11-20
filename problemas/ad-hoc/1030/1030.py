NC = int(input())

for i in range(1, NC + 1):
    n, k = [int(x) for x in input().strip().split(' ')]

    sobrevivente = 0
    for j in range(1, n + 1):
        sobrevivente = (sobrevivente + k) % j

    print(f"Case {i}: {sobrevivente + 1}")
