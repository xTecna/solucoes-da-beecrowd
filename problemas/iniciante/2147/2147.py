C = int(input())
for _ in range(C):
    galopeira = input()
    print(f'{(0.08 + 0.01 * (len(galopeira) - 8)):.2f}')
