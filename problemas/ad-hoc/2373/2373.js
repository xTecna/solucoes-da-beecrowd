var input = require('fs').readFileSync('/dev/stdin', 'utf8');
var lines = input.trim().split('\n');

let N = parseInt(lines.shift());

let resposta = 0;
for (let i = 0; i < N; ++i) {
    let [L, C] = lines.shift().split(' ').map((x) => parseInt(x));

    if (L > C) resposta += C;
}

console.log(resposta);
