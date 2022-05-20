var input = require('fs').readFileSync('/dev/stdin', 'utf8');
var lines = input.split('\n');

while (lines.length) {
    let N = parseInt(lines.shift().trim());

    for (let i = 0; i < N; ++i) {
        let linha = '';

        for (let j = 0; j < N; ++j) {
            if (i === N - 1 - j) {
                linha += '2';
            } else if (i === j) {
                linha += '1';
            } else {
                linha += '3';
            }
        }

        console.log(linha);
    }
}