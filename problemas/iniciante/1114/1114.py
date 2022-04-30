while True:
    try:
        senha = int(input())

        if(senha == 2002):
            print("Acesso Permitido")
            break

        print("Senha Invalida")
    except EOFError:
        break
