var input = require('fs').readFileSync('/dev/stdin', 'utf8');
var lines = input.trim().split('\n');

const teclado = "`1234567890-=QWERTYUIOP[]\\ASDFGHJKL;'ZXCVBNM,./";
const posicoes = [];
teclado.split('').forEach((x, i) => posicoes[x] = i);

while (lines.length) {
    let frase = lines.shift();

    let resposta = frase.split('').map((x) => {
        if (x === ' ') return ' ';
        else return teclado[posicoes[x] - 1];
    }).join('');
    console.log(resposta);
}
