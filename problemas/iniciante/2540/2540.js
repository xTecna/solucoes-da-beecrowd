var input = require('fs').readFileSync('/dev/stdin', 'utf8');
var lines = input.trim().split('\n');

while (lines.length) {
    let N = parseInt(lines.shift());
    let votos = lines.shift().trim().split(' ').map(x => parseInt(x)).reduce((acc, cur) => acc + cur, 0);
    console.log(votos >= 2 * N / 3 ? "impeachment" : "acusacao arquivada");
}