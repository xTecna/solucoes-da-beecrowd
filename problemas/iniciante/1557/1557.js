var input = require('fs').readFileSync('/dev/stdin', 'utf8');
var lines = input.split('\n');

let digitos = (numero) => Math.floor(Math.log10(numero)) + 1;

while (lines.length) {
    let N = parseInt(lines.shift());

    if (N === 0) {
        break;
    }

    let limite = digitos(1 << (2 * N - 2));

    for (let i = 0; i < N; ++i) {
        let linha = [];
        linha.push((1 << i).toString().padStart(limite));
        for (let j = 1; j < N; ++j) {
            linha.push((1 << (i + j)).toString().padStart(limite));
        }
        console.log(linha.join(' '));
    }

    console.log('');
}