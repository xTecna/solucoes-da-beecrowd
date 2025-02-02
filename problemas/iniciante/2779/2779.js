var input = require('fs').readFileSync('/dev/stdin', 'utf8');
var lines = input.split('\n');

let N = parseInt(lines.shift());
figurinhas = new Set();

let M = parseInt(lines.shift());
for (let i = 0; i < M; ++i) {
    let X = parseInt(lines.shift());
    figurinhas.add(X);
}

console.log(N - figurinhas.size);