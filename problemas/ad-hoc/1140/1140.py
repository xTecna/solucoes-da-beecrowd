while True:
    try:
        frase = input().strip()

        if(frase == '*'):
            break

        palavras = frase.strip().split(' ')
        letra = frase[0].lower()
        tautograma = True

        for palavra in palavras:
            if(palavra[0].lower() != letra):
                tautograma = False
                break
        
        print('Y' if tautograma else 'N')
    except EOFError:
        break
