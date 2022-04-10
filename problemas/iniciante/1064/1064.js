var input = require('fs').readFileSync('/dev/stdin', 'utf8');
var lines = input.split('\n');

let media = 0.0;
let contador = 0;
for (let i = 0; i < 6; ++i) {
    let numero = parseFloat(lines.shift());

    if (numero > 0) {
        ++contador;
        media += numero;
    }
}

if (contador > 0)
    media /= contador;

console.log(`${contador} valores positivos`);
console.log(`${media.toFixed(1)}`);