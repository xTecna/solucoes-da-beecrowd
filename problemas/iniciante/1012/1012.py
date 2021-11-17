PI = 3.14159

A, B, C = [float(x) for x in input().split(' ')]

areaTriangulo = (A * C)/2
areaCirculo = PI * C * C
areaTrapezio = (A + B)/2 * C
areaQuadrado = B * B
areaRetangulo = A * B

print(f"TRIANGULO: {areaTriangulo:.3f}")
print(f"CIRCULO: {areaCirculo:.3f}")
print(f"TRAPEZIO: {areaTrapezio:.3f}")
print(f"QUADRADO: {areaQuadrado:.3f}")
print(f"RETANGULO: {areaRetangulo:.3f}")
