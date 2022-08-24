var input = require('fs').readFileSync('/dev/stdin', 'utf8');
var lines = input.split('\n');

let [p, j1, j2, r, a] = lines.shift().trim().split(' ').map((x) => parseInt(x));

if (r) {
    if (a) {
        console.log('Jogador 2 ganha!');
    } else {
        console.log('Jogador 1 ganha!');
    }
} else {
    if (a) {
        console.log('Jogador 1 ganha!');
    } else {
        console.log(`Jogador ${(j1 + j2) % 2 === (1 - p) ? 1 : 2} ganha!`);
    }
}