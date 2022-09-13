import math

while True:
    try:
        N = int(input())
        print(int(math.log(N, 2)))
    except EOFError:
        break
