var input = require('fs').readFileSync('/dev/stdin', 'utf8');
var lines = input.split('\n');

let O = lines.shift().trim();

let soma = 0.0;
let contador = 0;
for (let i = 0; i < 12; ++i) {
    for (let j = 0; j < 12; ++j) {
        let numero = parseFloat(lines.shift());

        if ((i < 5) && (i < j && j < 11 - i)) {
            soma += numero;
            ++contador;
        }
    }
}

if (O === 'S') {
    console.log(`${soma.toFixed(1)}`);
} else {
    console.log(`${(soma / contador).toFixed(1)}`);
}