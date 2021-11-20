var input = require('fs').readFileSync('/dev/stdin', 'utf8');
var lines = input.split('\n');

let p = 0;
let NC = parseInt(lines[p++]);

let alturas = Array(231);
for(let k = 0; k < NC; ++k){
    let N = parseInt(lines[p++]);

    alturas.fill(0);
    lines[p++].split(' ').map((x) => alturas[parseInt(x)] += 1);

    let resposta = [];
    for(let i = 20; i < 231; ++i){
        for(let j = 0; j < alturas[i]; ++j){
            resposta.push(i);
        }
    }

    console.log(resposta.join(' '));
}
