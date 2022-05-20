var input = require('fs').readFileSync('/dev/stdin', 'utf8');
var lines = input.split('\n');

let N = parseInt(lines.shift());
let entrada = lines.shift().trim().split(' ').map((x) => parseInt(x));

let menor = entrada[0];
let resposta = 1;
for (let i = 1; i < N; ++i) {
    if (entrada[i] < menor) {
        menor = entrada[i];
        resposta = i + 1;
    }
}

console.log(resposta);