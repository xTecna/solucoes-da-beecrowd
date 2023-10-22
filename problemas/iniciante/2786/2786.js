var input = require('fs').readFileSync('/dev/stdin', 'utf8');
var lines = input.split('\n');

let L = parseInt(lines.shift());
let C = parseInt(lines.shift());

console.log(L * C + (L - 1) * (C - 1));
console.log(2 * (L + C - 2));