var input = require('fs').readFileSync('/dev/stdin', 'utf8');
var lines = input.split('\n');

let A = parseInt(lines.shift()).toString();
let B = parseInt(lines.shift()).toString();
let C = parseInt(lines.shift()).toString();

console.log(`A = ${A}, B = ${B}, C = ${C}`);
console.log(`A = ${A.padStart(10)}, B = ${B.padStart(10)}, C = ${C.padStart(10)}`);

if (A < 0) {
    console.log(`A = -${A.substring(1).padStart(9, '0')}, B = ${B.padStart(10, '0')}, C = ${C.padStart(10, '0')}`);
} else {
    console.log(`A = ${A.padStart(10, '0')}, B = ${B.padStart(10, '0')}, C = ${C.padStart(10, '0')}`);
}

console.log(`A = ${A.padEnd(10)}, B = ${B.padEnd(10)}, C = ${C.padEnd(10)}`);