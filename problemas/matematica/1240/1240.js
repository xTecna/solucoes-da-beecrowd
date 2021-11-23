var input = require('fs').readFileSync('/dev/stdin', 'utf8');
var lines = input.split('\n');

let N = parseInt(lines[0]);

for (let i = 0; i < N; ++i) {
    let [A, B] = lines[i + 1].trim().split(' ');

    A = A.slice(-B.length);

    console.log(`${A === B ? "encaixa" : "nao encaixa"}`);
}
