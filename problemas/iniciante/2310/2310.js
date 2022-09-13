var input = require('fs').readFileSync('/dev/stdin', 'utf8');
var lines = input.split('\n');

let [saquesTotais, bloqueiosTotais, ataquesTotais] = [0, 0, 0];
let [saquesSucedidos, bloqueiosSucedidos, ataquesSucedidos] = [0, 0, 0];

let T = parseInt(lines.shift());
for (let i = 0; i < T; ++i) {
    let nome = lines.shift();

    let [S, B, A] = lines.shift().trim().split(' ').map(x => parseInt(x));
    saquesTotais += S;
    bloqueiosTotais += B;
    ataquesTotais += A;

    let [S1, B1, A1] = lines.shift().trim().split(' ').map(x => parseInt(x));
    saquesSucedidos += S1;
    bloqueiosSucedidos += B1;
    ataquesSucedidos += A1;
}

console.log(`Pontos de Saque: ${(100 * saquesSucedidos / saquesTotais).toFixed(2)} %.`);
console.log(`Pontos de Bloqueio: ${(100 * bloqueiosSucedidos / bloqueiosTotais).toFixed(2)} %.`);
console.log(`Pontos de Ataque: ${(100 * ataquesSucedidos / ataquesTotais).toFixed(2)} %.`);