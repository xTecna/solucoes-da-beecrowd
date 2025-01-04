var input = require('fs').readFileSync('/dev/stdin', 'utf8');
var lines = input.split('\n');

let B = parseInt(lines.shift());
let T = parseInt(lines.shift());

if (B + T > 160) {
    console.log(1);
} else if (B + T < 160) {
    console.log(2);
} else {
    console.log(0);
}