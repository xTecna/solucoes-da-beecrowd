var input = require('fs').readFileSync('/dev/stdin', 'utf8');
var lines = input.split('\n');

let N = parseInt(lines.shift());

for (let i = 0; i < 1000; ++i) {
    console.log(`N[${i}] = ${i % N}`);
}