var input = require('fs').readFileSync('/dev/stdin', 'utf8');
var lines = input.split('\n');

let frase = "LIFE IS NOT A PROBLEM TO BE SOLVED";

let N = parseInt(lines.shift());

console.log(`${frase.substring(0, N)}`);