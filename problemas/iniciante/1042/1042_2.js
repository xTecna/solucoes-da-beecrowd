var input = require('fs').readFileSync('/dev/stdin', 'utf8');
var lines = input.split('\n');

let [A, B, C] = lines.shift().trim().split(' ').map((x) => parseInt(x));
let [a, b, c] = [A, B, C];

if (b < a) [a, b] = [b, a];
if (c < b) {
    [b, c] = [c, b];
    if (b < a) [a, b] = [b, a];
}

console.log(a);
console.log(b);
console.log(c);

console.log();

console.log(A);
console.log(B);
console.log(C);