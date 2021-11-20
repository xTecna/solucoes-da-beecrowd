var input = require('fs').readFileSync('/dev/stdin', 'utf8');
var lines = input.split('\n');

let [L, D] = lines.shift().trim().split(' ').map((x) => parseInt(x));
let [K, P] = lines.shift().trim().split(' ').map((x) => parseInt(x));

console.log(L * K + P * Math.floor(L/D));
