var input = require('fs').readFileSync('/dev/stdin', 'utf8');
var lines = input.split('\n');

let N = parseInt(lines.shift());

for (let i = 0; i < N; ++i) {
    let linha = [];
    for (let j = 0; j < 3; ++j) {
        linha.push((4 * i + 1 + j).toString());
    }
    linha.push('PUM');
    console.log(linha.join(' '));
}