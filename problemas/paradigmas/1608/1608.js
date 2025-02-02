var input = require('fs').readFileSync('/dev/stdin', 'utf8');
var lines = input.split('\n');

let T = parseInt(lines.shift());

for (let k = 0; k < T; ++k) {
    let [D, I, B] = lines.shift().trim().split(' ').map((x) => parseInt(x));
    let precos = lines.shift().trim().split(' ').map((x) => parseInt(x));

    let resposta = 0;
    for (let i = 0; i < B; ++i) {
        let bolo = lines.shift().trim().split(' ').map((x) => parseInt(x));
        bolo.shift();

        let custo = bolo.reduce((acc, cur, i, arr) =>
            (i % 2 === 0) ? acc + precos[cur] * arr[i + 1] : acc, 0);
        resposta = Math.max(resposta, Math.floor(D / custo));
    }

    console.log(resposta);
}