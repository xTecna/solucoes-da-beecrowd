var input = require('fs').readFileSync('/dev/stdin', 'utf8');
var lines = input.split('\n');

let C = parseInt(lines.shift());
for (let i = 0; i < C; ++i) {
    let galopeira = lines.shift().trim();
    console.log((0.08 + 0.01 * (galopeira.length - 8)).toFixed(2));
}