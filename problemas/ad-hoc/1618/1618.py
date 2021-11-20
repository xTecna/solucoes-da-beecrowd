N = int(input())

for _ in range(N):
    Ax, Ay, Bx, By, Cx, Cy, Dx, Dy, Rx, Ry = [
        int(x) for x in input().strip().split(' ')]

    print(1 if Ax <= Rx <= Bx and Dx <= Rx <=
          Cx and Ay <= Ry <= Dy and By <= Ry <= Cy else 0)
