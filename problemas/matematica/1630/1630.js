var input = require('fs').readFileSync('/dev/stdin', 'utf8');
var lines = input.trim().split('\n');

const mdc = (a, b) => (b === 0) ? a : mdc(b, a % b);

while (lines.length) {
    let [X, Y] = lines.shift().trim().split(' ').map((x) => parseInt(x));
    console.log(2 * (X / mdc(X, Y) + Y / mdc(X, Y)));
}