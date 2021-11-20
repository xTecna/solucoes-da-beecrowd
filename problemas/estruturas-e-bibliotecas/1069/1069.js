var input = require('fs').readFileSync('/dev/stdin', 'utf8');
var lines = input.split('\n');

let N = parseInt(lines.shift());

for(let k = 0; k < N; ++k){
    let expressao = lines.shift().trim();

    let resposta = 0;
    let parenteses = 0;
    for(let i = 0; i < expressao.length; ++i){
        if(expressao[i] == '<'){
            parenteses += 1;
        }else if(expressao[i] == '>' && parenteses > 0){
            parenteses -= 1;
            resposta += 1;
        }
    }

    console.log(resposta);
}
