var input = require('fs').readFileSync('/dev/stdin', 'utf8');
var lines = input.split('\n');

let nome = lines.shift();
console.log(nome.length <= 80 ? "YES" : "NO");