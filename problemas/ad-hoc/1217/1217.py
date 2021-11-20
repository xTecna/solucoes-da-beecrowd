pesoPorDia = 0.0
gastoPorDia = 0.0

N = int(input())

for i in range(1, N + 1):
    V = float(input())
    frutas = len(input().strip().split(' '))

    print(f"day {i}: {frutas} kg")

    pesoPorDia += frutas
    gastoPorDia += V

pesoPorDia /= N
gastoPorDia /= N

print(f"{pesoPorDia:.2f} kg by day")
print(f"R$ {gastoPorDia:.2f} by day")
