x, y = [float(x) for x in input().strip().split(' ')]

if(x > 0.0):
    if(y > 0.0):
        print("Q1")
    elif(y < 0.0):
        print("Q4")
    else:
        print("Eixo X")
elif(x < 0.0):
    if(y > 0.0):
        print("Q2")
    elif(y < 0.0):
        print("Q3")
    else:
        print("Eixo X")
else:
    if(y > 0.0):
        print("Eixo Y")
    elif(y < 0.0):
        print("Eixo Y")
    else:
        print("Origem")
