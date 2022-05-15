var input = require('fs').readFileSync('/dev/stdin', 'utf8');
var lines = input.split('\n');

let N = parseInt(lines.shift());

for (let i = 1; i <= N; ++i) {
    if (N % i === 0) {
        console.log(i);
    }
}