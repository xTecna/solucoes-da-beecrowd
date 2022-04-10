var input = require('fs').readFileSync('/dev/stdin', 'utf8');
var lines = input.split('\n');

let pares = 0;
for (let i = 0; i < 5; ++i) {
    let numero = parseInt(lines.shift());

    pares += !(numero % 2);
}

console.log(`${pares} valores pares`);