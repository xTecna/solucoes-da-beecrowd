var input = require('fs').readFileSync('/dev/stdin', 'utf8');
var lines = input.split('\n');

let QT = parseInt(lines.shift());
for (let i = 0; i < QT; ++i) {
    let [jogador1, jogada1, jogador2, jogada2] = lines.shift().trim().split(' ');
    let [N, M] = lines.shift().trim().split(' ').map((x) => parseInt(x));

    let jogadaGanha = (N + M) % 2 ? "IMPAR" : "PAR";
    if (jogada1 === jogadaGanha) {
        console.log(jogador1);
    } else {
        console.log(jogador2);
    }
}