var input = require('fs').readFileSync('/dev/stdin', 'utf8');
var lines = input.trim().split('\n');

let nomes = [];
for (let i = 0; i < 3; ++i) {
    nomes.push(lines.shift());
}

console.log(`${nomes[0]}${nomes[1]}${nomes[2]}`);
console.log(`${nomes[1]}${nomes[2]}${nomes[0]}`);
console.log(`${nomes[2]}${nomes[0]}${nomes[1]}`);
console.log(`${nomes[0].substring(0, 10)}${nomes[1].substring(0, 10)}${nomes[2].substring(0, 10)}`);