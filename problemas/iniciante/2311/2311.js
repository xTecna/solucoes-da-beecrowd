var input = require('fs').readFileSync('/dev/stdin', 'utf8');
var lines = input.split('\n');

const comp = (a, b) => {
    if (a > b) {
        return 1;
    }
    if (b > a) {
        return -1;
    }
    return 0;
};

const notaFinal = (notas, dificuldade) => {
    notas.sort(comp);

    soma = 0.0;
    for (let i = 1; i < 6; ++i) {
        soma += notas[i];
    }

    return soma * dificuldade;
};

let N = parseInt(lines.shift().trim());
for (let i = 0; i < N; ++i) {
    let nome = lines.shift().trim();
    let dificuldade = parseFloat(lines.shift().trim());
    let notas = lines.shift().trim().split(' ').map(x => parseFloat(x));

    console.log(`${nome} ${notaFinal(notas, dificuldade).toFixed(2)}`);
}