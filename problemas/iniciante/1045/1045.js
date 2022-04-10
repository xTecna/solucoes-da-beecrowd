var input = require('fs').readFileSync('/dev/stdin', 'utf8');
var lines = input.split('\n');

let lados = lines.shift().split(' ').map((x) => parseFloat(x));
lados.sort((a, b) => b - a);
let [A, B, C] = lados;

if (A >= B + C)
    console.log('NAO FORMA TRIANGULO');
else {
    if (A * A === B * B + C * C)
        console.log('TRIANGULO RETANGULO');
    else if (A * A > B * B + C * C)
        console.log('TRIANGULO OBTUSANGULO');
    else
        console.log('TRIANGULO ACUTANGULO');

    if (A === B && B === C)
        console.log('TRIANGULO EQUILATERO');
    else if (A === B || A === C || B === C)
        console.log('TRIANGULO ISOSCELES');
}