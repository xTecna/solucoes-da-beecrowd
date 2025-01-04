var input = require('fs').readFileSync('/dev/stdin', 'utf8');
var lines = input.split('\n');

let L = parseInt(lines.shift());
let C = parseInt(lines.shift());

console.log(1 - ((L % 2) ^ (C % 2)));