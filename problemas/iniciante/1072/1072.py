N = int(input())

incluso = 0
for _ in range(N):
    X = int(input())

    if(10 <= X <= 20):
        incluso += 1

print(f'{incluso} in')
print(f'{N - incluso} out')
