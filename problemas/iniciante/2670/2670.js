var input = require('fs').readFileSync('/dev/stdin', 'utf8');
var lines = input.split('\n');

let A1 = parseInt(lines.shift());
let A2 = parseInt(lines.shift());
let A3 = parseInt(lines.shift());

console.log(2 * Math.min(A2 + 2 * A3, A1 + A3, 2 * A1 + A2));