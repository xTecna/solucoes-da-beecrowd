def replaceAll(frase, simbolo, tagAberta, tagFechada):
    novaFrase = frase.replace(simbolo, tagAberta, 1)
    aberta = True
    while(novaFrase != frase):
        frase = novaFrase
        novaFrase = frase.replace(simbolo, tagFechada if aberta else tagAberta, 1)
        aberta = not aberta

    return frase

while True:
    try:
        frase = input()

        frase = replaceAll(frase, '_', '<i>', '</i>')
        frase = replaceAll(frase, '*', '<b>', '</b>')

        print(frase)
    except EOFError:
        break
