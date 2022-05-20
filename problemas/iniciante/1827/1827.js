var input = require('fs').readFileSync('/dev/stdin', 'utf8');
var lines = input.trim().split('\n');

while (lines.length) {
    let N = parseInt(lines.shift());

    for (let i = 0; i < N; ++i) {
        let linha = '';
        for (let j = 0; j < N; ++j) {
            if (i == Math.floor(N / 2) && j === Math.floor(N / 2)) {
                linha += '4';
            } else if (Math.floor(N / 3) <= i && i < N - Math.floor(N / 3) && Math.floor(N / 3) <= j && j < N - Math.floor(N / 3)) {
                linha += '1';
            } else if (i === j) {
                linha += '2';
            } else if (i === N - 1 - j) {
                linha += '3';
            } else {
                linha += '0';
            }
        }
        console.log(linha);
    }
    console.log('');
}