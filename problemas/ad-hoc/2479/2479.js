var input = require('fs').readFileSync('/dev/stdin', 'utf8');
var lines = input.split('\n');

let N = parseInt(lines.shift().trim());

let criancas = Array(N);
let [bemComportadas, malComportadas] = [0, 0];
for(let i = 0; i < N; ++i){
    let [comportamento, crianca] = lines.shift().trim().split(' ');

    if(comportamento === '+')   ++bemComportadas;
    else                        ++malComportadas;

    criancas[i] = crianca;
}

criancas.sort();

for(let i = 0; i < N; ++i){
    console.log(criancas[i]);
}
console.log(`Se comportaram: ${bemComportadas} | Nao se comportaram: ${malComportadas}`);
