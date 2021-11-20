while True:
    try:
        n = int(input())

        if(not n):
            break

        resposta = n
        while(n > 1):
            if(n % 2):
                n = 3 * n + 1
            else:
                n //= 2
            resposta = max(resposta, n)

        print(resposta)
    except EOFError:
        break
