var input = require('fs').readFileSync('/dev/stdin', 'utf8');
var lines = input.split('\n');

let X = parseInt(lines.shift());
let Z = 0;
while (lines.length) {
    Z = parseInt(lines.shift());

    if (Z > X) {
        break;
    }
}

let resposta = 1, soma = X;
while (soma <= Z) {
    soma += X + resposta;
    ++resposta;
}

console.log(resposta);