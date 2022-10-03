joias = set()

while True:
    try:
        joia = input()
        joias.add(joia)
    except EOFError:
        break

print(len(joias))
