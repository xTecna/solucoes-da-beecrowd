var input = require('fs').readFileSync('/dev/stdin', 'utf8');
var lines = input.split('\n');

let X = parseInt(lines.shift());

for (let i = 1; i <= X; i += 2)
    console.log(i);