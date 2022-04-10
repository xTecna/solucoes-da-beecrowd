var input = require('fs').readFileSync('/dev/stdin', 'utf8');
var lines = input.split('\n');

let [maior, posicao] = [Number.MIN_VALUE, 1];

for (let i = 0; i < 100; ++i) {
    let numero = parseInt(lines.shift());

    if (numero > maior) {
        maior = numero;
        posicao = i + 1;
    }
}

console.log(maior);
console.log(posicao);
