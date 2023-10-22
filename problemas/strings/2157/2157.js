var input = require('fs').readFileSync('/dev/stdin', 'utf8');
var lines = input.trim().split('\n');

let C = parseInt(lines.shift());
for(let k = 0; k < C; ++k){
    let [B, E] = lines.shift().trim().split(' ').map(x => parseInt(x));

    let resposta = "";
    for(let i = B; i <= E; ++i){
        resposta += i.toString();
    }
    let tamanho = resposta.length;
    for(let i = tamanho - 1; i > -1; --i){
        resposta += resposta[i];
    }
    console.log(resposta);
}