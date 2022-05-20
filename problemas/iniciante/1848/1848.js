var input = require('fs').readFileSync('/dev/stdin', 'utf8');
var lines = input.split('\n');

const converte = (linha) => {
    let soma = 0, n = linha.length;

    for (let i = 0; i < n; ++i) {
        if (linha[i] === '*') {
            soma += 1 << (n - i - 1);
        }
    }

    return soma;
};

let soma = 0;
while (lines.length) {
    let linha = lines.shift().trim();

    if (linha === 'caw caw') {
        console.log(soma);
        soma = 0;
    } else {
        soma += converte(linha);
    }
}