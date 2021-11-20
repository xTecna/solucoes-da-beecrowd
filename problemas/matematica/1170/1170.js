var input = require('fs').readFileSync('/dev/stdin', 'utf8');
var lines = input.trim().split('\n');

let N = parseInt(lines.shift());

for (let i = 0; i < N; ++i) {
    let C = parseFloat(lines.shift());

    console.log(`${Math.ceil(Math.log2(C))} dias`);
}
