while True:
    try:
        expressao = input().strip()

        correct = True
        parenteses = 0

        for letra in expressao:
            if(letra == '('):
                parenteses += 1
            elif(letra == ')'):
                if(parenteses > 0):
                    parenteses -= 1
                else:
                    correct = False
                    break
        
        correct = correct and (parenteses == 0)
        
        print("correct" if correct else "incorrect")
    except EOFError:
        break
