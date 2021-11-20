T = int(input())

for _ in range(T):
    A, B = input().strip().split(' ')

    diferenca = sum([(ord(B[j]) - ord(A[j]) + 26) % 26 for j in range(len(A))])
    
    print(diferenca)
