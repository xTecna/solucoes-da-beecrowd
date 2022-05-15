S = 0.0

for i in range(20):
    S += (2 * i + 1)/(1 << i)

print(f'{S:.2f}')
