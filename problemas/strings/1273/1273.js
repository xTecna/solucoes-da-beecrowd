var input = require('fs').readFileSync('/dev/stdin', 'utf8');
var lines = input.split('\n');

let first = true;
while(lines.length){
    let N = parseInt(lines.shift());

    if(!N)  break;

    if(first)   first = false;
    else        console.log('');

    let frases = [];
    for(let i = 0; i < N; ++i){
        frases.push(lines.shift().trim());
    }

    let maior = frases.reduce((acc, cur) => acc < cur.length ? cur.length : acc, 0);

    for(let i = 0; i < N; ++i){
        let retorno = '';
        for(let j = 0; j < maior - frases[i].length; ++j)   retorno += ' ';
        retorno += frases[i];
        console.log(retorno);
    }
}
