var input = require('fs').readFileSync('/dev/stdin', 'utf8');
var lines = input.split('\n');

const limiteInferior = (n) => n / Math.log(n);
const limiteSuperior = (n) => 1.25506 * n / Math.log(n);

let n = parseInt(lines.shift());
console.log(`${limiteInferior(n).toFixed(1)} ${limiteSuperior(n).toFixed(1)}`);