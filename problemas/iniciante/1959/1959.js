var input = require('fs').readFileSync('/dev/stdin', 'utf8');
var lines = input.split('\n');

let [N, L] = lines.shift().trim().split(' ').map((x) => parseInt(x));
console.log(N * L);