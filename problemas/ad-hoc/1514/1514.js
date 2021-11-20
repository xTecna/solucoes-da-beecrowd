var input = require('fs').readFileSync('/dev/stdin', 'utf8');
var lines = input.trim().split('\n');

const soma = (array) => {
    return array.reduce((acc, cur) => acc + cur, 0);
};

while(lines.length){
    let [N, M] = lines.shift().trim().split(' ').map((x) => parseInt(x));

    if(!N && !M)    break;

    participantes = [];
    for(let i = 0; i < N; ++i){
        participantes.push(lines.shift().trim().split(' ').map((x) => parseInt(x)));
    }

    problemas = [];
    for(let i = 0; i < M; ++i){
        problemas.push(soma(participantes.map((x) => x[i])));
    }
    participantes = participantes.map((x) => soma(x));

    let condicao1 = participantes.every((x) => x < M);
    let condicao2 = problemas.every((x) => x > 0);
    let condicao3 = problemas.every((x) => x < N);
    let condicao4 = participantes.every((x) => x > 0);

    console.log(condicao1 + condicao2 + condicao3 + condicao4);
}
