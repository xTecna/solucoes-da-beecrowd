var input = require('fs').readFileSync('/dev/stdin', 'utf8');
var lines = input.split('\n');

let N = parseInt(lines.shift());

for (let i = 1; i < 11; ++i)
    console.log(`${i} x ${N} = ${i * N}`);