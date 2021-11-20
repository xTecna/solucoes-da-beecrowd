while True:
    try:
        S = input()

        if(len(S) < 6 or len(S) > 32):
            print("Senha invalida.")
            continue
        
        errado, maiuscula, minuscula, numero = False, False, False, False
        for letra in S:
            if(letra.isalpha()):
                if(letra.isupper()):
                    maiuscula = True
                else:
                    minuscula = True
            elif(letra.isdigit()):
                numero = True
            else:
                errado = True
                break
        
        if(errado or not (maiuscula and minuscula and numero)):
            print("Senha invalida.")
        else:
            print("Senha valida.")
    except EOFError:
        break
