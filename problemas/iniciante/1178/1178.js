var input = require('fs').readFileSync('/dev/stdin', 'utf8');
var lines = input.split('\n');

let X = parseFloat(lines.shift());

for (let i = 0; i < 100; ++i) {
    console.log(`N[${i}] = ${X.toFixed(4)}`);
    X /= 2;
}