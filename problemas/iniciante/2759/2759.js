var input = require('fs').readFileSync('/dev/stdin', 'utf8');
var lines = input.split('\n');

let A = lines.shift()[0];
let B = lines.shift()[0];
let C = lines.shift()[0];

console.log(`A = ${A}, B = ${B}, C = ${C}`);
console.log(`A = ${B}, B = ${C}, C = ${A}`);
console.log(`A = ${C}, B = ${A}, C = ${B}`);