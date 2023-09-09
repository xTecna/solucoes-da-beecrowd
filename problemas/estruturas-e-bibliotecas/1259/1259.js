var input = require('fs').readFileSync('/dev/stdin', 'utf8');
var lines = input.trim().split('\n');

const compCrescente = (a, b) => {
    return a - b;
};
const compDecrescente = (a, b) => {
    return b - a;
};

let p = 0;
let n = parseInt(lines[p++]);

let [pares, impares] = [[], []];
for(let i = 0; i < n; ++i){
    let numero = parseInt(lines[p++].trim());
    
    if(numero % 2 === 0)    pares.push(numero);
    else                    impares.push(numero);
}

pares.sort(compCrescente);
impares.sort(compDecrescente);

for(let i = 0; i < pares.length; ++i){
    console.log(pares[i]);
}
for(let i = 0; i < impares.length; ++i){
    console.log(impares[i]);
}