var input = require('fs').readFileSync('/dev/stdin', 'utf8');
var lines = input.split('\n');

let I = parseInt(lines.shift());

let resposta = 'Feliz nat';
for (let i = 0; i < I; ++i) {
    resposta += 'a';
}
resposta += 'l!';

console.log(resposta);