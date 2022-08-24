var input = require('fs').readFileSync('/dev/stdin', 'utf8');
var lines = input.split('\n');

let numero = lines.shift().trim();
console.log(numero.split('').reverse().join(''));