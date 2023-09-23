var input = require('fs').readFileSync('/dev/stdin', 'utf8');
var lines = input.split('\n');

const porcoes = [300, 1500, 600, 1000, 150];

let resposta = 225;
for (let i = 0; i < 5; ++i) {
    let quantidade = parseInt(lines.shift().trim());
    resposta += quantidade * porcoes[i];
}

console.log(resposta);
