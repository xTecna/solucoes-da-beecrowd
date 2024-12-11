var input = require('fs').readFileSync('/dev/stdin', 'utf8');
var lines = input.split('\n');

let mapa = [];
const segura = (x, y) => mapa[x][y] + mapa[x + 1][y] + mapa[x][y + 1] + mapa[x + 1][y + 1] >= 2;

let N = parseInt(lines.shift());
for (let i = 0; i < N + 1; ++i) {
    mapa.push(lines.shift().trim().split(' ').map(x => parseInt(x)));
}

for (let i = 0; i < N; ++i) {
    linha = '';
    for (let j = 0; j < N; ++j) {
        linha += (segura(i, j) ? 'S' : 'U');
    }
    console.log(linha);
}