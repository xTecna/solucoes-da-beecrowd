var input = require('fs').readFileSync('/dev/stdin', 'utf8');
var lines = input.trim().split('\n');

let A = parseInt(lines.shift());
let M = parseInt(lines.shift());

console.log(2 * M - A);