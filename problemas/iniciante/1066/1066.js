var input = require('fs').readFileSync('/dev/stdin', 'utf8');
var lines = input.split('\n');

let [impares, positivos, negativos] = [0, 0, 0];

for (let i = 0; i < 5; ++i) {
    let numero = parseInt(lines.shift());

    if (Math.abs(numero) % 2)
        ++impares;
    if (numero > 0)
        ++positivos;
    if (numero < 0)
        ++negativos;
}

console.log(`${5 - impares} valor(es) par(es)`);
console.log(`${impares} valor(es) impar(es)`);
console.log(`${positivos} valor(es) positivo(s)`);
console.log(`${negativos} valor(es) negativo(s)`);