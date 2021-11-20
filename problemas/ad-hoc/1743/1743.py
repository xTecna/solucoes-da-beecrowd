X = [int(x) for x in input().strip().split(' ')]
Y = [int(x) for x in input().strip().split(' ')]

compativel = True
for i in range(5):
    if(X[i] == Y[i]):
        compativel = False
        break

print('Y' if compativel else 'N')
