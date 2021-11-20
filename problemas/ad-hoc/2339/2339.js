var input = require('fs').readFileSync('/dev/stdin', 'utf8');
var lines = input.split('\n');

let [C, P, F] = lines.shift().trim().split(' ').map((x) => parseInt(x));

console.log(P >= C * F ? 'S' : 'N');
