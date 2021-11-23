while True:
    try:
        a, b = [int(x) for x in input().strip().split(' ')]

        if(a == 0 and b == 0):
            break

        carry = 0
        resposta = 0
        while(a > 0 and b > 0):
            if(a % 10 + b % 10 + carry > 9):
                carry = 1
                resposta += 1
            else:
                carry = 0

            a //= 10
            b //= 10

        while(a > 0):
            if(a % 10 + carry > 9):
                carry = 1
                resposta += 1
            else:
                carry = 0

            a //= 10

        while(b > 0):
            if(b % 10 + carry > 9):
                carry = 1
                resposta += 1
            else:
                carry = 0

            b //= 10

        if(resposta == 0):
            print('No carry operation.')
        elif(resposta == 1):
            print('1 carry operation.')
        else:
            print(f'{resposta} carry operations.')
    except EOFError:
        break
