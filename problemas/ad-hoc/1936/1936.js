var input = require('fs').readFileSync('/dev/stdin', 'utf8');
var lines = input.split('\n');

const fatorial = [40320, 5040, 720, 120, 24, 6, 2, 1];

let N = parseInt(lines.shift());

let resultado = 0;
for(let i = 0; i < fatorial.length; ++i){
    resultado += Math.floor(N/fatorial[i]);
    N %= fatorial[i];
}

console.log(resultado);
