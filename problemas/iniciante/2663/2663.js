var input = require('fs').readFileSync('/dev/stdin', 'utf8');
var lines = input.split('\n');

const comp = (a, b) => b - a;

let N = parseInt(lines.shift());
let K = parseInt(lines.shift());

pontos = [];
for (let i = 0; i < N; ++i) {
    pontos.push(parseInt(lines.shift()));
}
pontos.sort(comp);

let resposta = K;
while (resposta < N && pontos[resposta] === pontos[K - 1]) {
    ++resposta;
}
console.log(resposta);