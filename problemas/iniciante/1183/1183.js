var input = require('fs').readFileSync('/dev/stdin', 'utf8');
var lines = input.split('\n');

let O = lines.shift();
let M = [];

let soma = 0.0;
let contador = 0;
for (let i = 0; i < 12; ++i) {
    M.push([]);
    for (let j = 0; j < 12; ++j) {
        M[i].push(parseFloat(lines.shift()));

        if (j > i) {
            soma += M[i][j];
            ++contador;
        }
    }
}

if (O === 'S') {
    console.log(`${soma.toFixed(1)}`);
} else {
    console.log(`${(soma / contador).toFixed(1)}`);
}