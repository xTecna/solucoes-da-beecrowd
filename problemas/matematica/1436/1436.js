var input = require('fs').readFileSync('/dev/stdin', 'utf8');
var lines = input.split('\n');

let T = parseInt(lines.shift());

for (let k = 0; k < T; ++k) {
    let idades = lines.shift().trim().split(' ').map((x) => parseInt(x));
    idades.shift();

    console.log(`Case ${k + 1}: ${idades[Math.floor(idades.length / 2)]}`);
}
