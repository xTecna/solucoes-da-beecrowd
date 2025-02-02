var input = require('fs').readFileSync('/dev/stdin', 'utf8');
var lines = input.split('\n');

let O = lines.shift().trim();

let soma = 0.0;
let contador = 0;
for (let i = 0; i < 12; ++i) {
    for (let j = 0; j < 12; ++j) {
        let numero = parseFloat(lines.shift().trim());

        if ((i < 6 && j > 11 - i) || (i > 5 && j > i)) {
            soma += numero;
            ++contador;
        }
    }
}

console.log(`${(O === 'S' ? soma : soma / contador).toFixed(1)}`);