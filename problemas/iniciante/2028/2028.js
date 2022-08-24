var input = require('fs').readFileSync('/dev/stdin', 'utf8');
var lines = input.trim().split('\n');

const somaPA = (an) => Math.floor(an * (an + 1) / 2);

let k = 1;
while (lines.length) {
    let N = parseInt(lines.shift());

    console.log(`Caso ${k++}: ${somaPA(N) + 1} numero${N === 0 ? '' : 's'}`);

    let linha = '0';
    for (let i = 1; i <= N; ++i) {
        for (let j = 0; j < i; ++j) {
            linha += ` ${i}`;
        }
    }
    console.log(`${linha}\n`);
}