while True:
    try:
        entrada = input()

        if(entrada == '-1'):
            break

        if(entrada.startswith('0x')):
            print(f'{int(entrada, 16)}')
        else:
            print(f'0x{int(entrada):X}')
    except EOFError:
        break
