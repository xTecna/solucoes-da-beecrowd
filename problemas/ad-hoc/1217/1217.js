var input = require('fs').readFileSync('/dev/stdin', 'utf8');
var lines = input.split('\n');

let pesoPorDia = 0.0, gastoPorDia = 0.0;

let N = parseInt(lines.shift().trim());

for(let i = 1; i <= N; ++i){
    let V = parseFloat(lines.shift().trim());
    let frutas = lines.shift().trim().split(' ').length;

    console.log(`day ${i}: ${frutas} kg`);

    pesoPorDia += frutas;
    gastoPorDia += V;
}

pesoPorDia /= N;
gastoPorDia /= N;

console.log(`${pesoPorDia.toFixed(2)} kg by day`);
console.log(`R$ ${gastoPorDia.toFixed(2)} by day`);
