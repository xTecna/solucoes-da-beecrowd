T = int(input())
chas = [int(x) for x in input().strip().split(' ')]

corretos = sum([1 for x in chas if x == T])

print(corretos)
