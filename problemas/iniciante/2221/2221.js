var input = require('fs').readFileSync('/dev/stdin', 'utf8');
var lines = input.split('\n');

const valorGolpe = (ataque, defesa, nivel, bonus) => (ataque + defesa) / 2 + bonus * (1 - (nivel % 2));

let T = parseInt(lines.shift());
for (let i = 0; i < T; ++i) {
    let B = parseInt(lines.shift());

    let [Ai, Di, Li] = lines.shift().trim().split(' ').map(x => parseInt(x));
    let golpeDabriel = valorGolpe(Ai, Di, Li, B);

    [Ai, Di, Li] = lines.shift().trim().split(' ').map(x => parseInt(x));
    let golpeGuarte = valorGolpe(Ai, Di, Li, B);

    if (golpeDabriel > golpeGuarte) {
        console.log('Dabriel');
    } else if (golpeGuarte > golpeDabriel) {
        console.log('Guarte');
    } else {
        console.log('Empate');
    }
}