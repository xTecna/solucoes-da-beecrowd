var input = require('fs').readFileSync('/dev/stdin', 'utf8');
var lines = input.split('\n');

let pesos = [2, 3, 5];
let N = parseInt(lines.shift());
for (let k = 0; k < N; ++k) {
    let notas = lines.shift().trim().split(' ').map((x) => parseFloat(x));

    let media = 0.0;
    for (let i = 0; i < 3; ++i) {
        media += notas[i] * pesos[i];
    }

    console.log(`${(media / 10).toFixed(1)}`);
}