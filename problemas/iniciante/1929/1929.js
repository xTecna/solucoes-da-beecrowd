var input = require('fs').readFileSync('/dev/stdin', 'utf8');
var lines = input.split('\n');

let fazTriangulo = (a, b, c) => (Math.abs(b - c) < a && a < b + c && Math.abs(a - c) < b && b < a + c && Math.abs(a - b) < c && c < a + b);

let [A, B, C, D] = lines.shift().trim().split(' ').map((x) => parseInt(x));

let resposta = fazTriangulo(A, B, C) || fazTriangulo(A, B, D) || fazTriangulo(A, C, D) || fazTriangulo(B, C, D);

console.log(resposta ? "S" : "N");