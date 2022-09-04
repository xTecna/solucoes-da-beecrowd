var input = require('fs').readFileSync('/dev/stdin', 'utf8');
var lines = input.split('\n');

let bits = lines.shift().trim().split('');
let pares = bits.reduce((acc, cur) => acc + parseInt(cur), 0);

console.log(`${bits.join('')}${pares % 2}`);