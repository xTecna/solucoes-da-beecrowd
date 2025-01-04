A, B, C = [int(x) for x in input().strip().split(' ')]
X, Y, Z = [int(x) for x in input().strip().split(' ')]

print((X // A) * (Y // B) * (Z // C))