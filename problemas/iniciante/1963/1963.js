var input = require('fs').readFileSync('/dev/stdin', 'utf8');
var lines = input.split('\n');

let [A, B] = lines.shift().trim().split(' ').map((x) => parseFloat(x));
console.log(`${(100 * B / A - 100).toFixed(2)}%`);