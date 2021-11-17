var input = require('fs').readFileSync('/dev/stdin', 'utf8');
var lines = input.split('\n');

let [A, B] = lines.shift().split(' ').map((x) => parseInt(x));

if (A < B) [A, B] = [B, A];

console.log((A % B === 0) ? "Sao Multiplos" : "Nao sao Multiplos");