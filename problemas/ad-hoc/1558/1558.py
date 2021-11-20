respostas = set()

def preProcessa():
    for i in range(101):
        respostas.add(i * i)
    
    for i in range(1, 101):
        for j in range(i, 101):
            respostas.add(i * i + j * j)

preProcessa()

while True:
    try:
        numero = int(input().strip())

        print("YES" if numero in respostas else "NO")
    except EOFError:
        break
