var input = require('fs').readFileSync('/dev/stdin', 'utf8');
var lines = input.split('\n');

let L = parseInt(lines.shift().trim());
let T = lines.shift().trim();

let soma = 0.0;
for (let i = 0; i < 12; ++i) {
    for (let j = 0; j < 12; ++j) {
        let numero = parseFloat(lines.shift());

        if (i === L) {
            soma += numero;
        }
    }
}

if (T === 'S') {
    console.log(`${soma.toFixed(1)}`);
} else {
    console.log(`${(soma / 12).toFixed(1)}`);
}