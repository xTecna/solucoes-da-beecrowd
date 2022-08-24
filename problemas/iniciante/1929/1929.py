def fazTriangulo(a, b, c):
    return (abs(b - c) < a and a < b + c and abs(a - c) < b and b < a + c and abs(a - b) < c and c < a + b)

A, B, C, D = [int(x) for x in input().strip().split(' ')]

resposta = fazTriangulo(A, B, C) or fazTriangulo(A, B, D) or fazTriangulo(A, C, D) or fazTriangulo(B, C, D)

print('S' if resposta else 'N')