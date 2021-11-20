var input = require('fs').readFileSync('/dev/stdin', 'utf8');
var lines = input.split('\n');

const MDC = (a, b) => {
    return (b == 0) ? a : MDC(b, a % b);
}

class Fracao{
    constructor(num, den){
        this.num = num;
        this.den = den;
    }

    irredutivel(){
        let mdc = (this.num < 0) ? MDC(-this.num, this.den) : MDC(this.num, this.den);

        return new Fracao(this.num/mdc, this.den/mdc);
    }
};

const soma = (f1, f2) => {
    return new Fracao(f1.num * f2.den + f2.num * f1.den, f1.den * f2.den);
};

const subtracao = (f1, f2) => {
    return new Fracao(f1.num * f2.den - f2.num * f1.den, f1.den * f2.den);
};

const multiplicacao = (f1, f2) => {
    return new Fracao(f1.num * f2.num, f1.den * f2.den);
};

const divisao = (f1, f2) => {
    return new Fracao(f1.num * f2.den, f2.num * f1.den);
};

let N = parseInt(lines.shift().trim());

let operador = '';
let [f1, f2, resultado] = [new Fracao(0, 1), new Fracao(0, 1), new Fracao(0, 1)];
for(let i = 0; i < N; ++i){
    [f1.num, , f1.den, operador, f2.num, , f2.den] = lines.shift().trim().split(' ');

    f1.num = parseInt(f1.num);
    f1.den = parseInt(f1.den);
    f2.num = parseInt(f2.num);
    f2.den = parseInt(f2.den);

    switch(operador){
        case '+':   resultado = soma(f1, f2);
                    break;
        case '-':   resultado = subtracao(f1, f2);
                    break;
        case '*':   resultado = multiplicacao(f1, f2);
                    break;
        case '/':   resultado = divisao(f1, f2);
                    break;
    }

    let resultadoIrredutivel = resultado.irredutivel();

    console.log(`${resultado.num}/${resultado.den} = ${resultadoIrredutivel.num}/${resultadoIrredutivel.den}`)
}
