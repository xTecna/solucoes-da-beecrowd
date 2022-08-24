var input = require('fs').readFileSync('/dev/stdin', 'utf8');
var lines = input.split('\n');

let [P, N] = lines.shift().trim().split(' ').map((x) => parseInt(x));
let canos = lines.shift().trim().split(' ').map((x) => parseInt(x));
let resposta = true;
for (let i = 1; i < N; ++i) {
    resposta &= Math.abs(canos[i - 1] - canos[i]) <= P;
}

console.log(resposta ? "YOU WIN" : "GAME OVER");