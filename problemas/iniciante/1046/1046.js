var input = require('fs').readFileSync('/dev/stdin', 'utf8');
var lines = input.split('\n');

let [hora_inicial, hora_final] = lines.shift().split(' ').map((x) => parseInt(x));

if (hora_final <= hora_inicial)
    hora_final += 24;

console.log(`O JOGO DUROU ${hora_final - hora_inicial} HORA(S)`);