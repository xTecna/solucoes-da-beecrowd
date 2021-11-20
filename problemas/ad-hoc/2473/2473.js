var input = require('fs').readFileSync('/dev/stdin', 'utf8');
var lines = input.split('\n');

const retorno = ["sena", "quina", "quadra", "terno", "azar", "azar", "azar"];

let aposta = lines.shift().trim().split(' ').map((x) => parseInt(x));
let resultado = lines.shift().trim().split(' ').map((x) => parseInt(x));

aposta = new Set(aposta);

for(let i = 0; i < 6; ++i){
    aposta.delete(resultado[i]);
}

console.log(retorno[aposta.size]);
