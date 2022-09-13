var input = require('fs').readFileSync('/dev/stdin', 'utf8');
var lines = input.trim().split('\n');

while (lines.length) {
    let M = parseInt(lines.shift());

    let [numerador, denominador] = [0, 0];
    for (let i = 0; i < M; ++i) {
        let [N, C] = lines.shift().trim().split(' ').map(x => parseInt(x));

        numerador += N * C;
        denominador += C;
    }

    console.log(`${(numerador / (100 * denominador)).toFixed(4)}`);
}