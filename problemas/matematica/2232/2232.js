var input = require('fs').readFileSync('/dev/stdin', 'utf8');
var lines = input.split('\n');

let T = parseInt(lines.shift());

for (let i = 0; i < T; ++i) {
    let N = parseInt(lines.shift());

    console.log(Math.pow(2, N) - 1);
}