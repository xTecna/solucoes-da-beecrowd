var input = require('fs').readFileSync('/dev/stdin', 'utf8');
var lines = input.split('\n');

let X = parseInt(lines.shift());
let Y = parseInt(lines.shift());

if (X > Y) {
    [X, Y] = [Y, X];
}

let soma = 0;
for (let i = X; i <= Y; ++i) {
    if (i % 13 === 0) {
        continue;
    }
    soma += i;
}

console.log(soma);