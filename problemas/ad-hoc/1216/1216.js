var input = require('fs').readFileSync('/dev/stdin', 'utf8');
var lines = input.split('\n');

let media = lines.reduce((acc, cur, i) => (i % 2) ? acc + parseInt(cur) : acc, 0);
let resultado = media/(lines.length/2);

console.log(resultado.toFixed(1));
