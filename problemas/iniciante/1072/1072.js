var input = require('fs').readFileSync('/dev/stdin', 'utf8');
var lines = input.split('\n');

let N = parseInt(lines.shift());

let incluso = 0;
for (let i = 0; i < N; ++i) {
    let X = parseInt(lines.shift());

    if (10 <= X && X <= 20) {
        ++incluso;
    }
}

console.log(`${incluso} in`);
console.log(`${N - incluso} out`);