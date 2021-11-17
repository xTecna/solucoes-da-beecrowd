import math

a, b, c = [float(x) for x in input().strip().split(' ')]

delta = b * b - 4 * a * c

if(a != 0 and delta > -1):
    R1 = (- b + math.sqrt(delta))/(2 * a)
    R2 = (- b - math.sqrt(delta))/(2 * a)

    print(f"R1 = {R1:.5f}")
    print(f"R2 = {R2:.5f}")
else:
    print("Impossivel calcular")
