var input = require('fs').readFileSync('/dev/stdin', 'utf8');
var lines = input.trim().split('\n');

while (lines.length) {
    let N = parseInt(lines.shift());
    console.log(Math.floor(Math.log(N) / Math.log(2)).toFixed(0));
}