import math

while True:
  try:
    F = float(input())

    # Sabemos dois angulos e um lado, podemos descobrir o outro lado usando lei dos senos
    # F / sen(63) = l / sen(108)
    # Sabemos que o angulo eh 63 porque o outro eh 9 que completa o triangulo (108 + 9 + 63 = 180)
    # Sabemos que o outro angulo eh 9 porque 9 + 90 + 9 = 180, que completa o angulo interno do pentagono regular
    lado = F * math.sin(108 * math.pi / 180) / math.sin(63 * math.pi / 180)
    print(f'{lado:.10f}')
  except EOFError:
    break
