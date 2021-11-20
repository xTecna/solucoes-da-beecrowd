var input = require('fs').readFileSync('/dev/stdin', 'utf8');
var lines = input.split('\n');

let [C, N] = lines.shift().trim().split(' ').map((x) => parseInt(x));

console.log(C % N);
