var input = require('fs').readFileSync('/dev/stdin', 'utf8');
var lines = input.split('\n');

let N = parseInt(lines.shift().trim());
let [A, L, P] = lines.shift().trim().split(' ').map((x) => parseInt(x));

console.log(N <= A && N <= L && N <= P ? 'S' : 'N');
