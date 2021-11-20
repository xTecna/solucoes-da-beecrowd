var input = require('fs').readFileSync('/dev/stdin', 'utf8');
var lines = input.split('\n');

const vogal = (letra) => ['a', 'e', 'i', 'o', 'u'].includes(letra);

let risada = lines.shift().trim().split('');

let soVogal = risada.filter((x) => vogal(x));
let invertido = [...soVogal];
soVogal = soVogal.join('');
invertido.reverse();
invertido = invertido.join('');

console.log((soVogal === invertido) ? 'S' : 'N');
