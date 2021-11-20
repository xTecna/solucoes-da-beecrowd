var input = require('fs').readFileSync('/dev/stdin', 'utf8');
var lines = input.split('\n');

let [X, Y] = lines.shift().split(' ').map((x) => parseInt(x));

console.log((0 <= X && X <= 432 && 0 <= Y && Y <= 468) ? "dentro" : "fora");
