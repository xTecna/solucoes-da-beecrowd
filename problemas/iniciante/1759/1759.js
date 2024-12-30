var input = require('fs').readFileSync('/dev/stdin', 'utf8');
var lines = input.split('\n');

let N = parseInt(lines.shift());

--N;
let resposta = [];
for (let i = 0; i < N; ++i) {
    resposta.push("Ho");
}
resposta.push("Ho!");

console.log(`${resposta.join(' ')}`);