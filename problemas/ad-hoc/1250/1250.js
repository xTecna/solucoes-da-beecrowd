var input = require('fs').readFileSync('/dev/stdin', 'utf8');
var lines = input.split('\n');

let N = parseInt(lines.shift().trim());

for(let k = 0; k < N; ++k){
    let T = parseInt(lines.shift().trim());

    let tiros = lines.shift().trim().split(' ').map((x) => parseInt(x));
    let pulos = lines.shift().trim().split('');

    let resposta = pulos.reduce((acc, cur, i) => acc + ((cur === 'S' && tiros[i] < 3) || (cur === 'J' && tiros[i] > 2)), 0);

    console.log(resposta);
}
