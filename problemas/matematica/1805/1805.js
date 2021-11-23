var input = require('fs').readFileSync('/dev/stdin', 'utf8');
var lines = input.split('\n');

const somaPA = (a0, an, n) => Math.floor(((a0 + an) * n) / 2);

let [A, B] = lines.shift().trim().split(' ').map((x) => parseInt(x));

console.log(somaPA(A, B, B - A + 1));
