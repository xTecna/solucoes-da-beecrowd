var input = require('fs').readFileSync('/dev/stdin', 'utf8');
var lines = input.split('\n');

let [H, P] = lines.shift().trim().split(' ').map((x) => parseInt(x));
console.log((H / P).toFixed(2));