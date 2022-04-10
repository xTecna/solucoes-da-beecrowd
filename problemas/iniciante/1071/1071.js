var input = require('fs').readFileSync('/dev/stdin', 'utf8');
var lines = input.split('\n');

const numeroImpares = (X, Y) => Math.floor((Y - X) / 2.0) + 1;
const somaPA = (X, Y) => Math.floor((X + Y) * numeroImpares(X, Y)) / 2.0;

let X = parseInt(lines.shift());
let Y = parseInt(lines.shift());

if (X > Y) {
    [X, Y] = [Y, X];
}
X += (Math.abs(X) % 2) + 1;
Y -= (Math.abs(Y) % 2) + 1;

let soma = 0;
for (let i = X; i <= Y; i += 2) {
    soma += i;
}

console.log(soma);