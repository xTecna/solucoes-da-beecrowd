var input = require('fs').readFileSync('/dev/stdin', 'utf8');
var lines = input.split('\n');

let N = parseInt(lines.shift());

for (let i = 2; i <= N; i += 2)
    console.log(`${i}^2 = ${i * i}`);