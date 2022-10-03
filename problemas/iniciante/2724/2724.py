N = int(input())
for i in range(N):
    if(i > 0):
        print('')

    T = int(input())
    perigosos = []
    for _ in range(T):
        perigosos.append(input().strip())

    U = int(input())
    for _ in range(U):
        formula = input().strip()

        perigoso = False
        for ativo in perigosos:
            pos = formula.find(ativo)
            while (pos != -1):
                frente = pos + len(ativo)

                if(frente < len(formula)):
                    daFrente = formula[frente - 1]
                    maisNaFrente = formula[frente]

                    if((daFrente.isdigit() and not maisNaFrente.isdigit()) or (daFrente.isupper() and maisNaFrente.isupper()) or (daFrente.islower() and maisNaFrente.isupper())):
                        perigoso = True
                        break
                else:
                    perigoso = True
                    break

                pos = formula.find(ativo, pos + 1)

            if(perigoso):
                break

        print('Abortar' if perigoso else 'Prossiga')
