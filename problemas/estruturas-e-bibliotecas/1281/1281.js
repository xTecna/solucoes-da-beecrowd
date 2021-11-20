var input = require('fs').readFileSync('/dev/stdin', 'utf8');
var lines = input.split('\n');

let N = parseInt(lines.shift().trim());

for(let k = 0; k < N; ++k){
    let M = parseInt(lines.shift().trim());

    let precos = {};
    for(let i = 0; i < M; ++i){
        let [fruta, preco] = lines.shift().trim().split(' ');

        precos[fruta] = parseFloat(preco);
    }

    let P = parseInt(lines.shift().trim());

    let resposta = 0.0;
    for(let i = 0; i < P; ++i){
        let [fruta, quantidade] = lines.shift().trim().split(' ');

        resposta += parseInt(quantidade) * precos[fruta];
    }

    console.log(`R$ ${resposta.toFixed(2)}`);
}
