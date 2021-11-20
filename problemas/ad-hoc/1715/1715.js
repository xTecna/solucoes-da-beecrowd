var input = require('fs').readFileSync('/dev/stdin', 'utf8');
var lines = input.split('\n');

let [N, M] = lines.shift().trim().split(' ').map((x) => parseInt(x));

let jogadores = [];
for(let i = 0; i < N; ++i){
    let gols = lines.shift().trim().split(' ').map((x) => parseInt(x));

    jogadores.push(gols);
}

jogadores = jogadores.map((x) => x.reduce((acc, cur) => cur > 0 ? acc + 1 : acc, 0));
let resposta = jogadores.reduce((acc, cur) => cur === M ? acc + 1 : acc, 0);

console.log(resposta);
