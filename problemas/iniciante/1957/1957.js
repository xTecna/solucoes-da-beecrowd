var input = require('fs').readFileSync('/dev/stdin', 'utf8');
var lines = input.split('\n');

let V = parseInt(lines.shift());
console.log(V.toString(16).toUpperCase());