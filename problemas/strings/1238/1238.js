var input = require('fs').readFileSync('/dev/stdin', 'utf8');
var lines = input.split('\n');

let N = parseInt(lines.shift());

for(let i = 0; i < N; ++i){
    let [A, B] = lines.shift().trim().split(' ');

    let tam = Math.min(A.length, B.length);
    let resposta = '';
    for(let j = 0; j < tam; ++j){
        resposta += A[j] + B[j];
    }
    resposta += (A.length > tam) ? A.substring(tam) : B.substring(tam);

    console.log(resposta);
}
