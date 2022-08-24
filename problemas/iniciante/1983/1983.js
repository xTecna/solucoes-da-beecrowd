var input = require('fs').readFileSync('/dev/stdin', 'utf8');
var lines = input.split('\n');

let n = parseInt(lines.shift());

let aluno = '';
let maior = 0.0;
for (let i = 0; i < n; ++i) {
    let [m, nota] = lines.shift().trim().split(' ');
    nota = parseFloat(nota);

    if (nota > maior) {
        maior = nota;
        aluno = m;
    }
}

if (maior < 8.0) {
    console.log('Minimum note not reached');
} else {
    console.log(aluno);
}