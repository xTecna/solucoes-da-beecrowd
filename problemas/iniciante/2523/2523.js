var input = require('fs').readFileSync('/dev/stdin', 'utf8');
var lines = input.trim().split('\n');

while (lines.length) {
    let lampadas = lines.shift();
    let N = parseInt(lines.shift());
    let letras = lines.shift().trim().split(' ').map(x => lampadas[parseInt(x) - 1]);
    console.log(letras.join(''));
}