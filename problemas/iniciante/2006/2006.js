var input = require('fs').readFileSync('/dev/stdin', 'utf8');
var lines = input.split('\n');

let T = parseInt(lines.shift().trim());
let chas = lines.shift().trim().split(' ').map((x) => parseInt(x));

let corretos = chas.reduce((acc, cur) => (cur === T) ? acc + 1 : acc, 0);

console.log(corretos);