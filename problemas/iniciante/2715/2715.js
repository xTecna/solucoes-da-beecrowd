var input = require('fs').readFileSync('/dev/stdin', 'utf8');
var lines = input.trim().split('\n');

while (lines.length) {
    let N = parseInt(lines.shift());

    let somas = [];
    while (somas.length < N) {
        let numeros = lines.shift().trim().split(' ').map(x => parseInt(x));
        for (let i = 0; i < numeros.length; ++i) {
            somas.push(numeros[i]);
        }
    }

    for (let i = 1; i < somas.length; ++i) {
        somas[i] += somas[i - 1];
    }

    let [inicio, fim, resposta] = [0, N, somas[N - 1]];
    while (inicio < fim) {
        let meio = Math.floor((inicio + fim) / 2);

        let rangel = somas[meio];
        let gugu = somas[N - 1] - rangel;
        resposta = Math.min(resposta, Math.abs(rangel - gugu));

        if (rangel === gugu) {
            break;
        } else if (rangel < gugu) {
            inicio = meio + 1;
        } else {
            fim = meio;
        }
    }

    console.log(resposta);
}