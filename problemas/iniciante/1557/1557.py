import math

def digitos(numero):
  return math.floor(math.log10(numero)) + 1

while True:
  try:
    N = int(input())

    if (N == 0):
      break

    limite = digitos(1 << (2 * N - 2))

    for i in range(N):
      print(str(1 << i).rjust(limite), end='')
      for j in range(1, N):
        print(' ', end='')
        print(str(1 << (i + j)).rjust(limite), end='')
      print('')
    print('')
  except EOFError:
    break
