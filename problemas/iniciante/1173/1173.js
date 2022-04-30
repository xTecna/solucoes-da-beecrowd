var input = require('fs').readFileSync('/dev/stdin', 'utf8');
var lines = input.split('\n');

let V = parseInt(lines.shift().trim());

let produto = V;
for (let i = 0; i < 10; ++i) {
    console.log(`N[${i}] = ${produto}`);
    produto <<= 1;
}