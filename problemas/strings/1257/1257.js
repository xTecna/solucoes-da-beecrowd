var input = require('fs').readFileSync('/dev/stdin', 'utf8');
var lines = input.split('\n');

let N = parseInt(lines.shift());
for(let k = 0; k < N; ++k){
    let L = parseInt(lines.shift());

    let valor = 0;
    for(let i = 0; i < L; ++i){
        let frase = lines.shift().trim();

        for(let j = 0; j < frase.length; ++j){
            valor += (frase.charCodeAt(j) - 'A'.charCodeAt(0) + i + j);
        }
    }

    console.log(valor);
}