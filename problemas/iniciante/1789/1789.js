var input = require('fs').readFileSync('/dev/stdin', 'utf8');
var lines = input.trim().split('\n');

while (lines.length) {
    let N = parseInt(lines.shift().trim());
    let numeros = lines.shift().trim().split(' ').map((x) => parseInt(x));
    let maior = numeros.reduce((acc, cur) => cur > acc ? cur : acc, numeros[0]);

    if (maior < 10) {
        console.log(1);
    } else if (maior < 20) {
        console.log(2);
    } else {
        console.log(3);
    }
}