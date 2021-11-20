var input = require('fs').readFileSync('/dev/stdin', 'utf8');
var lines = input.split('\n');

let N = parseInt(lines.shift());

for(let i = 0; i < N; ++i){
    let frase = lines.shift().trim().split(' ');

    let resposta = frase.map((x) => x[0]).join('');

    console.log(resposta);
}
