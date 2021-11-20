while True:
    try:
        sentenca = input()

        maiuscula = True
        resposta = ""
        for letra in sentenca:
            if(letra.isalpha()):
                resposta += letra.upper() if maiuscula else letra.lower()
                maiuscula = not maiuscula
            else:
                resposta += letra
        print(resposta)
    except EOFError:
        break
