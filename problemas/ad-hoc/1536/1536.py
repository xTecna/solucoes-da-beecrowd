N = int(input())

for _ in range(N):
    M1, x, V2 = input().strip().split(' ')
    M1 = int(M1)
    V2 = int(V2)

    M2, x, V1 = input().strip().split(' ')
    M2 = int(M2)
    V1 = int(V1)

    if(M1 + V1 == M2 + V2):
        if(V1 == V2):
            print("Penaltis")
        elif(V1 > V2):
            print("Time 1")
        else:
            print("Time 2")
    elif(M1 + V1 > M2 + V2):
        print("Time 1")
    else:
        print("Time 2")
