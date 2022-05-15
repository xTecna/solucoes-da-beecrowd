var input = require('fs').readFileSync('/dev/stdin', 'utf8');
var lines = input.split('\n');

while (lines.length) {
    let X = parseInt(lines.shift());

    if (X === 0) {
        break;
    }

    let numeros = [];
    for (let i = 1; i <= X; ++i) {
        numeros.push(i);
    }

    console.log(numeros.join(' '));
}