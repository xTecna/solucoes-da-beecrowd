var input = require('fs').readFileSync('/dev/stdin', 'utf8');
var lines = input.split('\n');

const converte = (digito, um, cinco, dez) => {
    if (digito === 9) {
        return um + dez;
    } else if (digito === 4) {
        return um + cinco;
    }

    let resposta = '';

    if (digito > 4) {
        resposta = cinco;
        digito -= 5;
    }
    for (let i = 0; i < digito; ++i) {
        resposta += um;
    }

    return resposta;
};

let N = parseInt(lines.shift());

let resposta = '';

resposta += converte(Math.floor(N / 100), 'C', 'D', 'M');
N %= 100;
resposta += converte(Math.floor(N / 10), 'X', 'L', 'C');
N %= 10;
resposta += converte(N, 'I', 'V', 'X');

console.log(resposta);