var input = require('fs').readFileSync('/dev/stdin', 'utf8');
var lines = input.split('\n');

let T = parseInt(lines.shift().trim());

for(let k = 0; k < T; ++k){
    let n = parseInt(lines.shift().trim());

    let posicao = 0;
    let instrucoes = Array(n + 1);
    for(let i = 1; i <= n; ++i){
        let instrucao = lines.shift().trim();

        if(instrucao === "LEFT"){
            instrucoes[i] = -1;
        }else if(instrucao === "RIGHT"){
            instrucoes[i] = 1;
        }else{
            instrucao = parseInt(instrucao.split(' ')[2]);
            instrucoes[i] = instrucoes[instrucao];
        }

        posicao += instrucoes[i];
    }

    console.log(posicao);
}
