var input = require('fs').readFileSync('/dev/stdin', 'utf8');
var lines = input.split('\n');

while (lines.length) {
    let N = parseInt(lines.shift().trim());

    if (N === 0) {
        break;
    }

    for (let i = 0; i < N; ++i) {
        let linha = [(1).toString().padStart(3)];
        for (let j = 1; j < N; ++j) {
            linha.push((Math.min(Math.min(i, N - i - 1), Math.min(j, N - j - 1)) + 1).toString().padStart(4));
        }
        console.log(linha.join(''));
    }

    console.log('');
}