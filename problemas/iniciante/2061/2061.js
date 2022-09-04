var input = require('fs').readFileSync('/dev/stdin', 'utf8');
var lines = input.split('\n');

let [N, M] = lines.shift().trim().split(' ');
for (let i = 0; i < M; ++i) {
    let acao = lines.shift().trim();

    if (acao === "fechou") {
        ++N;
    } else {
        --N;
    }
}

console.log(N);