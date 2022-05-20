var input = require('fs').readFileSync('/dev/stdin', 'utf8');
var lines = input.split('\n');

while (lines.length) {
    let N = parseInt(lines.shift().trim());

    if (N === 0) {
        break;
    }

    for (let i = 0; i < N; ++i) {
        let linha = [(i + 1).toString().padStart(3)];
        for (let j = 1; j < N; ++j) {
            linha.push((Math.abs(i - j) + 1).toString().padStart(4));
        }
        console.log(linha.join(''));
    }

    console.log('');
}