var input = require('fs').readFileSync('/dev/stdin', 'utf8');
var lines = input.split('\n');

let X = parseInt(lines.shift());
X += (X % 2 === 0);

for (let i = 0; i < 12; i += 2) {
    console.log(X + i);
}