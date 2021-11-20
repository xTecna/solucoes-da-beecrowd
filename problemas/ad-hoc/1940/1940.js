var input = require('fs').readFileSync('/dev/stdin', 'utf8');
var lines = input.split('\n');

let [J, R] = lines.shift().trim().split(' ').map((x) => parseInt(x));
R *= J;

let jogadas = lines.shift().trim().split(' ').map((x) => parseInt(x));

let PV = Array(J);
PV.fill(0);
for(let i = 0; i < R; ++i){
    PV[i % J] += jogadas[i];
}

let [maior, vencedor] = [PV[0], 0];
for(let i = 1; i < J; ++i){
    if(PV[i] >= maior){
        vencedor = i;
        maior = PV[i];
    }
}

console.log(vencedor + 1);
