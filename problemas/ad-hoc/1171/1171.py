n = int(input())

frequencias = [0 for _ in range(2001)]

for _ in range(n):
    x = int(input())
    
    frequencias[x] += 1

for i in range(1, 2001):
    if(frequencias[i] > 0):
        print(f"{i} aparece {frequencias[i]} vez(es)")
