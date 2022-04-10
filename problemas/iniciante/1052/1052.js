var input = require('fs').readFileSync('/dev/stdin', 'utf8');
var lines = input.split('\n');

const meses = ['January', 'February', 'March', 'April', 'May', 'June', 'July', 'August', 'September', 'October', 'November', 'December']

let mes = parseInt(lines.shift());

console.log(meses[mes - 1]);