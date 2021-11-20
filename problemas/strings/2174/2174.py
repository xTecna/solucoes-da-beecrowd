N = int(input())

pomekons = set()
for _ in range(N):
    S = input()

    pomekons.add(S)

print(f"Falta(m) {151 - len(pomekons)} pomekon(s).")
