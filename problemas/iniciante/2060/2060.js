var input = require('fs').readFileSync('/dev/stdin', 'utf8');
var lines = input.split('\n');

let N = parseInt(lines.shift());
let numeros = lines.shift().trim().split(' ').map((x) => parseInt(x));

for (let i = 2; i < 6; ++i) {
    console.log(`${numeros.reduce((acc, cur) => (cur % i === 0) ? acc + 1 : acc, 0)} Multiplo(s) de ${i}`);
}