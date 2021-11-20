var input = require('fs').readFileSync('/dev/stdin', 'utf8');
var lines = input.split('\n');

let [X, Y] = lines.shift().trim().split(' ').map((x) => parseInt(x));

console.log(`${Math.ceil(Y/(Y - X))}`);
