let input = require('fs').readFileSync('/dev/stdin', 'utf8');
let lines = input.split('\n');

let t = parseInt(lines.shift());

console.log(4 * t);
