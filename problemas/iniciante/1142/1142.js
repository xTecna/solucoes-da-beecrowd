var input = require('fs').readFileSync('/dev/stdin', 'utf8');
var lines = input.split('\n');

let N = parseInt(lines.shift());
for (let i = 1; i < 4 * N; i += 4) {
    console.log(`${i} ${i + 1} ${i + 2} PUM`);
}