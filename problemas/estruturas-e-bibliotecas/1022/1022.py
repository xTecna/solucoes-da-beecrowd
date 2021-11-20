def MDC(a, b):
    return a if b == 0 else MDC(b, a % b)


class Fracao:
    def __init__(self, num, den):
        self.num = num
        self.den = den

    def __add__(self, outra):
        return Fracao(self.num * outra.den + outra.num * self.den, self.den * outra.den)

    def __sub__(self, outra):
        return Fracao(self.num * outra.den - outra.num * self.den, self.den * outra.den)

    def __mul__(self, outra):
        return Fracao(self.num * outra.num, self.den * outra.den)

    def __truediv__(self, outra):
        return Fracao(self.num * outra.den, outra.num * self.den)

    def __str__(self):
        return str(self.num) + '/' + str(self.den)

    def irredutivel(self):
        mdc = MDC(-self.num, self.den) if self.num < 0 else MDC(self.num, self.den)

        return Fracao(self.num//mdc, self.den//mdc)


N = int(input())

f1, f2 = Fracao(0, 1), Fracao(0, 1)
for _ in range(N):
    f1.num, _, f1.den, operador, f2.num, _, f2.den = input().strip().split(' ')

    f1.num = int(f1.num)
    f1.den = int(f1.den)
    f2.num = int(f2.num)
    f2.den = int(f2.den)

    resultado = Fracao(0, 1)
    if(operador == '+'):
        resultado = f1 + f2
    elif(operador == '-'):
        resultado = f1 - f2
    elif(operador == '*'):
        resultado = f1 * f2
    elif(operador == '/'):
        resultado = f1 / f2

    resultadoIrredutivel = resultado.irredutivel()

    print(f'{resultado} = {resultadoIrredutivel}')

