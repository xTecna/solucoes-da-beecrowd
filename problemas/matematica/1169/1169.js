var input = require('fs').readFileSync('/dev/stdin', 'utf8');
var lines = input.split('\n');

const potencia = (base, expoente) => {
    if (expoente === 1) return base;
    if (expoente % 2) return base * potencia(base, expoente - 1);

    let p = potencia(base, Math.floor(expoente / 2));
    return p * p;
};

const somaPG = (a0, q, n) => {
    return a0 * (potencia(q, n) - 1) / (q - 1);
};

let N = parseInt(lines.shift());

for (let i = 0; i < N; ++i) {
    let X = parseInt(lines.shift());

    console.log(`${Math.floor(somaPG(1, 2, X) / 12000)} kg`);
}
