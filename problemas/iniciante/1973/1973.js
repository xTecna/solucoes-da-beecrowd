var input = require('fs').readFileSync('/dev/stdin', 'utf8');
var lines = input.split('\n');

let N = parseInt(lines.shift());
let ovelhas = lines.shift().trim().split(' ').map((x) => parseInt(x));
let naoRoubados = ovelhas.reduce((acc, cur) => acc + cur, 0);

let visitados = new Set();
let i = 0, estrelas = 0;
while (i > -1 && i < N) {
    if (!visitados.has(i)) {
        visitados.add(i);
        ++estrelas;
    }

    let antes = ovelhas[i];
    if (ovelhas[i] > 0) {
        ovelhas[i]--;
        --naoRoubados;
    }

    if (antes % 2)
        ++i;
    else
        --i;
}

console.log(`${estrelas} ${naoRoubados}`);