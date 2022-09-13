var input = require('fs').readFileSync('/dev/stdin', 'utf8');
var lines = input.trim().split('\n');

const distanciaManhattan = (x1, y1, x2, y2) => Math.abs(x1 - x2) + Math.abs(y1 - y2);

while (lines.length) {
    let [N, M] = lines.shift().trim().split(' ').map(x => parseInt(x));

    let [x1, y1, x2, y2] = [0, 0, 0, 0];
    for (let i = 0; i < N; ++i) {
        let numeros = lines.shift().trim().split(' ').map(x => parseInt(x));
        for (let j = 0; j < M; ++j) {
            if (numeros[j] === 1) {
                x1 = i;
                y1 = j;
            } else if (numeros[j] === 2) {
                x2 = i;
                y2 = j;
            }
        }
    }

    console.log(distanciaManhattan(x1, y1, x2, y2));
}