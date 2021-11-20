var input = require('fs').readFileSync('/dev/stdin', 'utf8');
var lines = input.split('\n');

let cartas = lines.shift().trim().split(' ').map((x) => parseInt(x));

let [crescente, decrescente] = [true, true];

for(let i = 0; i < 4; ++i){
    if(cartas[i] <= cartas[i + 1])  decrescente = false;
    if(cartas[i] >= cartas[i + 1])  crescente = false;
}

if(crescente)           console.log('C');
else if(decrescente)    console.log('D');
else                    console.log('N');
