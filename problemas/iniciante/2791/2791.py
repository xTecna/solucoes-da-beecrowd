C = [int(x) for x in input().strip().split(' ')]

for i in range(4):
    if(C[i] == 1):
        print(i + 1)
        break