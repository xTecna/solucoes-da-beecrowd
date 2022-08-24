var input = require('fs').readFileSync('/dev/stdin', 'utf8');
var lines = input.split('\n');

let T = lines.shift().trim().split(' ').map((x) => parseInt(x));
console.log(T.reduce((acc, cur) => acc + cur, 0) - 3);