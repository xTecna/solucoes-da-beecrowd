var input = require('fs').readFileSync('/dev/stdin', 'utf8');
var lines = input.split('\n');

let [X, Y] = lines.shift().trim().split(' ').map((x) => parseInt(x));

for (let i = 1; i <= Y; i += X) {
    let numeros = [];
    for (let j = 0; j < X && i + j <= Y; ++j) {
        numeros.push(i + j);
    }
    console.log(numeros.join(' '));
}