n = int(input())

for _ in range(n):
  altura, espessura, galhos = [int(x) for x in input().strip().split(' ')]
  if (200 <= altura <= 300) and (50 <= espessura) and (150 <= galhos):
    print('Sim')
  else:
    print('Nao')
