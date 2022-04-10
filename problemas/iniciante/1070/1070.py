X = int(input())
X += (X % 2 == 0)

for i in range(0, 12, 2):
    print(X + i)