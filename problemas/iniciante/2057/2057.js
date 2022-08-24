var input = require('fs').readFileSync('/dev/stdin', 'utf8');
var lines = input.split('\n');

let [S, T, F] = lines.shift().trim().split(' ').map((x) => parseInt(x));
console.log((24 + S + T + F) % 24);