var input = require('fs').readFileSync('/dev/stdin', 'utf8');
var lines = input.split('\n');

let resposta = 0;
let N = parseInt(lines.shift());
let R = lines.shift().trim().split(' ').map(x => parseInt(x));
for (let i = 1; i < N; ++i) {
    if (R[i] < R[i - 1]) {
        resposta = i + 1;
        break;
    }
}

console.log(resposta);