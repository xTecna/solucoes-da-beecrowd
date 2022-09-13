while True:
    try:
        traducao = {}

        C, N = [int(x) for x in input().strip().split(' ')]

        cifra1 = input()
        lowerCifra1 = cifra1.lower()
        cifra2 = input()
        lowerCifra2 = cifra2.lower()
        for i in range(C):
            traducao[cifra1[i]] = cifra2[i]
            traducao[lowerCifra1[i]] = lowerCifra2[i]
            traducao[cifra2[i]] = cifra1[i]
            traducao[lowerCifra2[i]] = lowerCifra1[i]

        for _ in range(N):
            frase = input()
            for letra in frase:
                print(traducao.get(letra, letra), end='')
            print('')
        print('')

    except EOFError:
        break
